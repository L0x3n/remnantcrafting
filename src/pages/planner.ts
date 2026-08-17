// Material planner: pick targets, get the whole material tree, the shopping list and the craft order.

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
  fishing: 'Fishing',
  herbalism: 'Herbalism',
  gathering: 'Gathering',
  drop: 'Drop',
  shop: 'Vendor',
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
    node.recipe
      ? h('span', { class: 'muted' }, ` · ${node.recipe.profession} lv ${node.recipe.level ?? '?'}`)
      : h('span', { class: 'muted' }, sourcesFor(data, node.name) ? ` · ${sourcesFor(data, node.name)}` : ' · raw material'),
    node.shared ? h('span', { class: 'chip' }, 'shared with another branch') : null,
    node.cyclic ? h('span', { class: 'chip warn' }, 'circular recipe') : null,
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
    return h('div', { class: 'panel' }, h('p', { class: 'empty' }, 'Add a target above and everything you need gets worked out.'));
  }

  const levels = Object.entries(plan.levelByProfession).sort((a, b) => b[1] - a[1]);

  return h(
    'div',
    null,
    section(
      'What this plan demands',
      h(
        'div',
        { class: 'row' },
        ...levels.map(([profession, level]) => h('span', { class: 'chip ember' }, `${profession} lv ${level}`)),
        h('span', { class: 'chip' }, `${plan.steps.reduce((sum, step) => sum + step.crafts, 0)} crafts in total`),
        h('span', { class: 'chip' }, `${plan.rawTotals.length} kinds of raw material`),
        plan.pooledSavings.length
          ? h(
              'span',
              { class: 'chip good', title: plan.pooledSavings.map((row) => `${row.name}: ${row.saved} fewer`).join(', ') },
              `${plan.pooledSavings.reduce((sum, row) => sum + row.saved, 0)} crafts saved by sharing batches`,
            )
          : null,
      ),
      ...plan.warnings.map((warning) => h('p', { class: 'note' }, warning)),
    ),
    h(
      'div',
      { class: 'grid two' },
      section(
        'Shopping list (raw materials)',
        h(
          'div',
          { class: 'scroll' },
          table(
            ['Need', 'Material', 'Have', 'Where to get it'],
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
                  h('span', { class: 'muted' }, sourcesFor(data, row.name) || 'source unknown'),
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
                        'craft it instead',
                      )
                    : null,
                ),
              ];
            }),
          ),
        ),
      ),
      section(
        'Craft order (bottom up)',
        h(
          'div',
          { class: 'scroll' },
          table(
            ['#', 'Craft', 'Runs', 'Profession', 'Lv', ''],
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
                      title: 'Count this as a raw material instead of crafting it',
                      onclick: () => {
                        state.treatAsRaw.add(step.name);
                        save(state);
                        rerender();
                      },
                    },
                    'buy or farm',
                  ),
                ),
              ];
            }),
          ),
        ),
      ),
    ),
    section('Material tree', h('div', { class: 'tree' }, h('ul', null, ...plan.roots.map((root) => treeNode(data, root))))),
  );
}

function targetPicker(data: Database, state: State, rerender: () => void): HTMLElement {
  const craftables = [...new Set(data.recipes.map((recipe) => recipe.output))].sort();
  const listId = 'planner-outputs';
  const input = h('input', {
    list: listId,
    placeholder: 'What do you want to craft?',
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
    h('h2', null, 'Targets'),
    h(
      'div',
      { class: 'row' },
      h('div', { class: 'field' }, h('span', { class: 'field-label' }, 'Item'), input),
      h('div', { class: 'field' }, h('span', { class: 'field-label' }, 'Quantity'), qty),
      h('button', { class: 'primary', onclick: add }, 'Add'),
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
            'Clear all',
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
                  title: 'Remove',
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

  // Deep link from an item page: #/planner?add=Copper%20Bow
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
      h('h1', null, 'Material planner'),
      h(
        'p',
        { class: 'lede' },
        'Pick what you want to craft and it breaks down to raw materials, in the right order, with the profession levels required. Enter what you already have and it gets subtracted. Everything is saved locally in your browser.',
      ),
      targetPicker(data, state, rerender),
      renderPlan(data, plan, state, rerender),
    );
  };

  rerender();
  return root;
}
