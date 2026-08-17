// Materialplanerare: välj mål, få hela materialträdet, inköpslistan och craft-ordningen.

import { db, iconUrl, type Database } from '../db.ts';
import { planCraft, type Plan, type PlanNode } from '../craft/planner.ts';
import { h, section, table } from '../ui.ts';

interface Target {
  name: string;
  qty: number;
}

interface State {
  targets: Target[];
  have: Record<string, number>;
  treatAsRaw: Set<string>;
  chosenRecipe: Record<string, string>;
}

const STORAGE_KEY = 'remnant-codex.planner';

function load(): State {
  try {
    const raw = JSON.parse(localStorage.getItem(STORAGE_KEY) ?? '{}');
    return {
      targets: Array.isArray(raw.targets) ? raw.targets : [],
      have: raw.have ?? {},
      treatAsRaw: new Set(raw.treatAsRaw ?? []),
      chosenRecipe: raw.chosenRecipe ?? {},
    };
  } catch {
    return { targets: [], have: {}, treatAsRaw: new Set(), chosenRecipe: {} };
  }
}

function save(state: State): void {
  localStorage.setItem(
    STORAGE_KEY,
    JSON.stringify({ ...state, treatAsRaw: [...state.treatAsRaw] }),
  );
}

const sourceLabel: Record<string, string> = {
  mining: 'Mining',
  fishing: 'Fiske',
  herbalism: 'Herbalism',
  gathering: 'Gathering',
  drop: 'Drop',
  shop: 'Butik',
};

function sourcesFor(data: Database, name: string): string {
  const rows = data.sources[name] ?? [];
  if (!rows.length) return '';
  const best = [...rows]
    .sort((a, b) => (parseFloat(b.chance ?? '0') || 0) - (parseFloat(a.chance ?? '0') || 0))
    .slice(0, 3);
  return best.map((row) => `${sourceLabel[row.via] ?? row.via}: ${row.where}${row.chance ? ` (${row.chance})` : ''}`).join(' · ');
}

function treeNode(data: Database, node: PlanNode): HTMLElement {
  const entity = data.byName.get(node.name);
  const label = h(
    'span',
    null,
    h('span', { class: 'qty' }, `${node.qty}× `),
    entity ? h('a', { href: `#/i/${entity.slug}` }, node.name) : h('span', { class: 'raw' }, node.name),
    node.covered > 0 ? h('span', { class: 'chip good' }, `${node.covered} i lager`) : null,
    node.recipe
      ? h('span', { class: 'muted' }, ` · ${node.recipe.profession} lv ${node.recipe.level ?? '?'} · ${node.crafts} craft`)
      : h('span', { class: 'muted' }, sourcesFor(data, node.name) ? ` · ${sourcesFor(data, node.name)}` : ' · råmaterial'),
    node.cyclic ? h('span', { class: 'chip warn' }, 'cirkulärt recept') : null,
  );

  return h(
    'li',
    null,
    label,
    node.children.length ? h('ul', null, ...node.children.map((child) => treeNode(data, child))) : null,
  );
}

function renderPlan(data: Database, plan: Plan, state: State, rerender: () => void): HTMLElement {
  if (!plan.roots.length) {
    return h('div', { class: 'panel' }, h('p', { class: 'empty' }, 'Lägg till ett mål ovan så räknar jag ut allt du behöver.'));
  }

  const levels = Object.entries(plan.levelByProfession).sort((a, b) => b[1] - a[1]);

  return h(
    'div',
    null,
    section(
      'Det här kräver planen',
      h(
        'div',
        { class: 'row' },
        ...levels.map(([profession, level]) => h('span', { class: 'chip ember' }, `${profession} lv ${level}`)),
        h('span', { class: 'chip' }, `${plan.steps.reduce((sum, step) => sum + step.crafts, 0)} craft totalt`),
        h('span', { class: 'chip' }, `${plan.rawTotals.length} sorters råmaterial`),
      ),
      ...plan.warnings.map((warning) => h('p', { class: 'note' }, warning)),
    ),
    h(
      'div',
      { class: 'grid two' },
      section(
        'Inköpslista (råmaterial)',
        h(
          'div',
          { class: 'scroll' },
          table(
            ['Antal', 'Material', 'Har', 'Var du hittar det'],
            plan.rawTotals.map((row) => {
              const entity = data.byName.get(row.name);
              const input = h('input', {
                type: 'number',
                min: '0',
                value: String(state.have[row.name] ?? 0),
                style: { width: '72px' },
                onchange: (event: Event) => {
                  const value = Number((event.target as HTMLInputElement).value) || 0;
                  if (value > 0) state.have[row.name] = value;
                  else delete state.have[row.name];
                  save(state);
                  rerender();
                },
              });
              const pinned = state.treatAsRaw.has(row.name);
              return [
                h('span', { class: 'num mono' }, String(row.qty)),
                entity ? h('a', { href: `#/i/${entity.slug}` }, row.name) : row.name,
                input,
                h(
                  'span',
                  null,
                  h('span', { class: 'muted' }, sourcesFor(data, row.name) || 'okänd källa'),
                  pinned
                    ? h(
                        'button',
                        {
                          class: 'tiny ghost',
                          style: { marginLeft: '8px' },
                          onclick: () => {
                            state.treatAsRaw.delete(row.name);
                            save(state);
                            rerender();
                          },
                        },
                        'crafta istället',
                      )
                    : null,
                ),
              ];
            }),
          ),
        ),
      ),
      section(
        'Craft-ordning (nedifrån och upp)',
        h(
          'div',
          { class: 'scroll' },
          table(
            ['#', 'Craft', 'Antal', 'Profession', 'Lv', ''],
            plan.steps.map((step, index) => {
              const entity = data.byName.get(step.name);
              const alternatives = data.recipesByOutput.get(step.name) ?? [];
              return [
                h('span', { class: 'num mono' }, String(index + 1)),
                entity ? h('a', { href: `#/i/${entity.slug}` }, step.name) : step.name,
                h('span', { class: 'num mono' }, `${step.crafts}×`),
                step.profession,
                h('span', { class: 'num mono' }, String(step.level ?? '?')),
                h(
                  'span',
                  { class: 'row', style: { gap: '4px' } },
                  alternatives.length > 1
                    ? h(
                        'select',
                        {
                          class: 'tiny',
                          onchange: (event: Event) => {
                            state.chosenRecipe[step.name] = (event.target as HTMLSelectElement).value;
                            save(state);
                            rerender();
                          },
                        },
                        ...alternatives.map((recipe) => {
                          const label = recipe.inputs.map((input) => `${input.qty}× ${input.name}`).join(' + ');
                          return h('option', { value: recipe.id, title: label, selected: state.chosenRecipe[step.name] === recipe.id }, label);
                        }),
                      )
                    : null,
                  h(
                    'button',
                    {
                      class: 'tiny ghost',
                      title: 'Räkna det här som råmaterial istället för att crafta det',
                      onclick: () => {
                        state.treatAsRaw.add(step.name);
                        save(state);
                        rerender();
                      },
                    },
                    'köp/farma',
                  ),
                ),
              ];
            }),
          ),
        ),
      ),
    ),
    section('Materialträd', h('div', { class: 'tree' }, h('ul', null, ...plan.roots.map((root) => treeNode(data, root))))),
  );
}

function targetPicker(data: Database, state: State, rerender: () => void): HTMLElement {
  const craftables = [...new Set(data.recipes.map((recipe) => recipe.output))].sort();
  const listId = 'planner-outputs';
  const input = h('input', {
    list: listId,
    placeholder: 'Vad vill du crafta?',
    style: { minWidth: '260px' },
  });
  const qty = h('input', { type: 'number', min: '1', value: '1' });

  const add = () => {
    const name = input.value.trim();
    if (!name) return;
    const match = craftables.find((each) => each.toLowerCase() === name.toLowerCase()) ?? name;
    const amount = Math.max(1, Number(qty.value) || 1);
    const existing = state.targets.find((target) => target.name === match);
    if (existing) existing.qty += amount;
    else state.targets.push({ name: match, qty: amount });
    input.value = '';
    save(state);
    rerender();
  };

  input.addEventListener('keydown', (event) => {
    if ((event as KeyboardEvent).key === 'Enter') add();
  });

  return h(
    'div',
    { class: 'panel' },
    h('h2', null, 'Mål'),
    h(
      'div',
      { class: 'row' },
      h('div', { class: 'field' }, h('span', { class: 'field-label' }, 'Föremål'), input),
      h('div', { class: 'field' }, h('span', { class: 'field-label' }, 'Antal'), qty),
      h('button', { class: 'primary', onclick: add }, 'Lägg till'),
      state.targets.length
        ? h(
            'button',
            {
              class: 'ghost',
              onclick: () => {
                state.targets = [];
                save(state);
                rerender();
              },
            },
            'Rensa alla',
          )
        : null,
    ),
    h('datalist', { id: listId }, ...craftables.map((name) => h('option', { value: name }))),
    state.targets.length
      ? h(
          'div',
          { class: 'row', style: { marginTop: '10px' } },
          ...state.targets.map((target) => {
            const entity = data.byName.get(target.name);
            const icon = iconUrl(entity?.image);
            return h(
              'span',
              { class: 'chip ember', style: { display: 'inline-flex', alignItems: 'center', gap: '6px', padding: '3px 8px' } },
              icon ? h('img', { class: 'icon', src: icon, style: { width: '20px', height: '20px' }, onerror: (e: Event) => (e.target as HTMLElement).remove() }) : null,
              `${target.qty}× ${target.name}`,
              h(
                'button',
                {
                  class: 'tiny ghost',
                  title: 'Ta bort',
                  onclick: () => {
                    state.targets = state.targets.filter((each) => each !== target);
                    save(state);
                    rerender();
                  },
                },
                '×',
              ),
            );
          }),
        )
      : null,
  );
}

export async function render(_params: Record<string, string>, query?: URLSearchParams): Promise<Node> {
  const data = await db();
  const state = load();

  // Deep link från en föremålssida: #/planner?add=Copper%20Bow
  const add = query?.get('add');
  if (add) {
    const existing = state.targets.find((target) => target.name === add);
    if (existing) existing.qty += 1;
    else state.targets.push({ name: add, qty: 1 });
    save(state);
  }

  const root = h('div', null);

  const rerender = () => {
    const plan = planCraft(state.targets, data.recipes, {
      have: state.have,
      treatAsRaw: state.treatAsRaw,
      chosenRecipe: state.chosenRecipe,
    });
    root.replaceChildren(
      h('h1', null, 'Materialplanerare'),
      h(
        'p',
        { class: 'lede' },
        'Välj vad du vill crafta så bryts allt ner till råmaterial, i rätt ordning, med profession-nivåerna som krävs. Fyll i vad du redan har så dras det av. Allt sparas lokalt i din webbläsare.',
      ),
      targetPicker(data, state, rerender),
      renderPlan(data, plan, state, rerender),
    );
  };

  rerender();
  return root;
}
