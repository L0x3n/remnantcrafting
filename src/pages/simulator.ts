// Craft-simulator: kör crafting-minispelet tusentals gånger och visar vad en plan
// faktiskt är värd, istället för vad en tur körning råkade ge.

import { db, type Database } from '../db.ts';
import { parseStatLines, toStatLine } from '../craft/statlines.ts';
import {
  atLeastOnce,
  attemptsFor,
  comparePaired,
  shareAtLeast,
  simulate,
  type CardDef,
  type ItemState,
  type Rarity,
  type StatLine,
  type SimSummary,
} from '../craft/engine.ts';
import { STRATEGIES } from '../craft/strategy.ts';
import { bar, frag, h, mount, num, pct, section, table } from '../ui.ts';

const RARITIES: Rarity[] = ['Common', 'Rare', 'Mythic', 'Legendary'];
const DEFAULT_WEIGHTS: Record<Rarity, number> = { Common: 62, Rare: 27, Mythic: 9, Legendary: 2 };
const STORAGE_KEY = 'remnant-codex.simulator';

interface State {
  itemName: string;
  lines: StatLine[];
  turns: number;
  rerolls: number;
  echoSlots: number;
  strategyId: string;
  weights: Record<Rarity, number>;
  runs: number;
  seed: number;
  disabled: Set<string>;
  /** the completion the player calls "good enough" */
  target: number;
  /** how many items they plan to craft, for the confidence readout */
  attempts: number | null;
}

const DEFAULT_LINES: StatLine[] = [{ name: 'Global Attack', min: 2, max: 10, value: 2, step: 0.1, weight: 1 }];

function load(): State {
  const base: State = {
    itemName: '',
    lines: DEFAULT_LINES.map((line) => ({ ...line })),
    turns: 8,
    rerolls: 3,
    echoSlots: 3,
    strategyId: 'balanced',
    weights: { ...DEFAULT_WEIGHTS },
    runs: 2000,
    seed: 2026,
    disabled: new Set<string>(),
    target: 0.9,
    attempts: null,
  };
  try {
    const raw = JSON.parse(localStorage.getItem(STORAGE_KEY) ?? '{}');
    return {
      ...base,
      ...raw,
      lines: Array.isArray(raw.lines) && raw.lines.length ? raw.lines : base.lines,
      weights: { ...base.weights, ...(raw.weights ?? {}) },
      disabled: new Set<string>(raw.disabled ?? []),
    };
  } catch {
    return base;
  }
}

const save = (state: State) => localStorage.setItem(STORAGE_KEY, JSON.stringify({ ...state, disabled: [...state.disabled] }));

const itemState = (state: State): ItemState => ({
  lines: state.lines.map((line) => ({ ...line, value: line.min })),
  echoes: [],
  echoSlots: state.echoSlots,
  turns: state.turns,
  rerolls: state.rerolls,
  destroyed: false,
  scrapped: false,
  log: [],
});

const simConfig = (state: State, cards: CardDef[]) => ({
  draw: { cards, rarityWeights: state.weights, disabled: state.disabled },
  strategy: STRATEGIES.find((strategy) => strategy.id === state.strategyId) ?? STRATEGIES[0],
});

// ------------------------------------------------------------------ setup

function itemPicker(data: Database, state: State, rerender: () => void): HTMLElement {
  const options = data.entities
    .filter((entity) => entity.kind === 'equipment' && parseStatLines(entity.statLines).length > 0)
    .map((entity) => entity.name)
    .sort();

  const input = h('input', { list: 'sim-items', placeholder: 'Ladda stats från ett föremål', value: state.itemName, style: { minWidth: '240px' } });

  const apply = () => {
    const entity = data.entities.find((each) => each.name.toLowerCase() === input.value.trim().toLowerCase());
    if (!entity) return;
    const parsed = parseStatLines(entity.statLines);
    if (!parsed.length) return;
    state.itemName = entity.name;
    state.lines = parsed.map((line) => toStatLine(line));
    state.echoSlots = entity.slots ?? 3;
    save(state);
    rerender();
  };

  input.addEventListener('change', apply);
  return h(
    'div',
    { class: 'row' },
    h('div', { class: 'field' }, h('span', { class: 'field-label' }, 'Föremål'), input),
    h('button', { onclick: apply }, 'Ladda stats'),
    h('datalist', { id: 'sim-items' }, ...options.map((name) => h('option', { value: name }))),
  );
}

function lineEditor(state: State, rerender: () => void): HTMLElement {
  const numberField = (line: StatLine, key: 'min' | 'max' | 'weight', step: string) =>
    h('input', {
      type: 'number',
      step,
      value: String(line[key]),
      onchange: (event: Event) => {
        (line[key] as number) = Number((event.target as HTMLInputElement).value) || 0;
        if (key !== 'weight') line.step = Number.isInteger(line.min) && Number.isInteger(line.max) ? 1 : 0.1;
        save(state);
        rerender();
      },
    });

  return h(
    'div',
    null,
    h(
      'div',
      { class: 'stat-line', style: { color: 'var(--ink-faint)', fontSize: '0.72rem', textTransform: 'uppercase', letterSpacing: '0.08em' } },
      h('span', null, 'Stat-rad'),
      h('span', null, 'Min'),
      h('span', null, 'Max'),
      h('span', null, 'Vikt'),
      h('span', null, 'Spann'),
      h('span', null, ''),
    ),
    ...state.lines.map((line) =>
      h(
        'div',
        { class: 'stat-line' },
        h('input', {
          value: line.name,
          onchange: (event: Event) => {
            line.name = (event.target as HTMLInputElement).value;
            save(state);
          },
        }),
        numberField(line, 'min', '0.1'),
        numberField(line, 'max', '0.1'),
        numberField(line, 'weight', '0.1'),
        h('span', { class: 'muted mono' }, `${num(line.min)} → ${num(line.max)}`),
        h(
          'button',
          {
            class: 'tiny ghost',
            title: 'Ta bort raden',
            onclick: () => {
              state.lines = state.lines.filter((each) => each !== line);
              if (!state.lines.length) state.lines = DEFAULT_LINES.map((each) => ({ ...each }));
              save(state);
              rerender();
            },
          },
          '×',
        ),
      ),
    ),
    h(
      'button',
      {
        class: 'tiny',
        style: { marginTop: '8px' },
        onclick: () => {
          state.lines.push({ name: 'Ny stat', min: 1, max: 10, value: 1, step: 1, weight: 1 });
          save(state);
          rerender();
        },
      },
      '+ Lägg till rad',
    ),
  );
}

function knobs(state: State, rerender: () => void): HTMLElement {
  const knob = (label: string, key: 'turns' | 'rerolls' | 'echoSlots' | 'runs' | 'seed', min: number, max: number) =>
    h(
      'div',
      { class: 'field' },
      h('span', { class: 'field-label' }, label),
      h('input', {
        type: 'number',
        min: String(min),
        max: String(max),
        value: String(state[key]),
        onchange: (event: Event) => {
          state[key] = Math.max(min, Math.min(max, Number((event.target as HTMLInputElement).value) || min));
          save(state);
          rerender();
        },
      }),
    );

  const strategy = STRATEGIES.find((each) => each.id === state.strategyId) ?? STRATEGIES[0];

  return h(
    'div',
    null,
    h('div', { class: 'row' }, knob('Turer', 'turns', 1, 60), knob('Rerolls', 'rerolls', 0, 40), knob('Echo-slots', 'echoSlots', 0, 8)),
    h(
      'div',
      { class: 'row', style: { marginTop: '10px' } },
      h(
        'div',
        { class: 'field' },
        h('span', { class: 'field-label' }, 'Spelstil'),
        h(
          'select',
          {
            onchange: (event: Event) => {
              state.strategyId = (event.target as HTMLSelectElement).value;
              save(state);
              rerender();
            },
          },
          ...STRATEGIES.map((each) => h('option', { value: each.id, selected: each.id === state.strategyId }, each.name)),
        ),
      ),
      knob('Körningar', 'runs', 100, 20000),
      knob('Seed', 'seed', 1, 999999),
    ),
    h('p', { class: 'note' }, strategy.description),
  );
}

function weightEditor(state: State, rerender: () => void): HTMLElement {
  const total = RARITIES.reduce((sum, rarity) => sum + state.weights[rarity], 0) || 1;
  return h(
    'div',
    null,
    h(
      'div',
      { class: 'row' },
      ...RARITIES.map((rarity) =>
        h(
          'div',
          { class: 'field' },
          h('span', { class: `field-label` }, rarity),
          h('input', {
            type: 'number',
            min: '0',
            value: String(state.weights[rarity]),
            style: { width: '70px' },
            onchange: (event: Event) => {
              state.weights[rarity] = Math.max(0, Number((event.target as HTMLInputElement).value) || 0);
              save(state);
              rerender();
            },
          }),
          h('small', null, pct(state.weights[rarity] / total, 0)),
        ),
      ),
      h(
        'button',
        {
          class: 'tiny',
          onclick: () => {
            state.weights = { ...DEFAULT_WEIGHTS };
            save(state);
            rerender();
          },
        },
        'Återställ',
      ),
    ),
    h(
      'p',
      { class: 'note assumed' },
      'Spelet publicerar inte hur ofta varje sällsynthet dyker upp. Siffrorna ovan är en antagen fördelning, inte uppmätt data. Ändra dem om du har egna mätningar, så räknas allt om.',
    ),
  );
}

function cardToggles(cards: CardDef[], state: State, rerender: () => void): HTMLElement {
  return h(
    'div',
    { class: 'row' },
    ...cards.map((card) =>
      h(
        'label',
        { class: 'chip', style: { cursor: 'pointer', opacity: state.disabled.has(card.id) ? '0.4' : '1' } },
        h('input', {
          type: 'checkbox',
          checked: !state.disabled.has(card.id),
          style: { marginRight: '6px', width: 'auto' },
          onchange: (event: Event) => {
            if ((event.target as HTMLInputElement).checked) state.disabled.delete(card.id);
            else state.disabled.add(card.id);
            save(state);
            rerender();
          },
        }),
        card.name,
      ),
    ),
  );
}

// ---------------------------------------------------------------- results

function histogram(summary: SimSummary): HTMLElement {
  const peak = Math.max(...summary.histogram.map((row) => row.count), 1);
  return h(
    'div',
    null,
    h(
      'div',
      { class: 'hist' },
      ...summary.histogram.map((row) =>
        h('div', {
          style: { height: `${(row.count / peak) * 100}%` },
          title: `${pct(row.bucket, 0)} till ${pct(row.bucket + 0.05, 0)}: ${row.count} körningar`,
        }),
      ),
    ),
    h(
      'div',
      { class: 'spread muted', style: { fontSize: '0.75rem', marginTop: '4px' } },
      h('span', null, '0% av maxstats'),
      h('span', null, '100%'),
    ),
  );
}

/** "0,84%" plus the frequency people actually feel, "1 av 119". */
function odds(p: number, digits = 2): string {
  if (p <= 0) return 'aldrig';
  if (p >= 1) return 'alltid';
  // The "1 in N" form only helps for rare things; at 95% it just reads as "1 in 1".
  return p < 0.25 ? `${pct(p, digits)} · 1 av ${Math.round(1 / p)}` : pct(p, digits);
}

/** How many crafts you need, and what a given number of crafts buys you. */
function confidencePanel(state: State, summary: SimSummary, rerender: () => void): HTMLElement {
  const hit = shareAtLeast(summary.scores, state.target);
  const planned = state.attempts ?? (hit > 0 ? Math.ceil(1 / hit) : 0);
  const confidence = atLeastOnce(hit, planned);

  const targetInput = h('input', {
    type: 'range',
    min: '0',
    max: '100',
    step: '1',
    value: String(Math.round(state.target * 100)),
    oninput: (event: Event) => {
      state.target = Number((event.target as HTMLInputElement).value) / 100;
      state.attempts = null;
      save(state);
      rerender();
    },
  });

  const attemptInput = h('input', {
    type: 'number',
    min: '1',
    value: String(planned),
    style: { width: '90px' },
    onchange: (event: Event) => {
      state.attempts = Math.max(1, Number((event.target as HTMLInputElement).value) || 1);
      save(state);
      rerender();
    },
  });

  return section(
    'Hur många måste du crafta?',
    h(
      'div',
      { class: 'row center' },
      h('div', { class: 'field' }, h('span', { class: 'field-label' }, 'Bra nog vid'), targetInput, h('small', null, `${pct(state.target, 0)} av maxstats`)),
      h('div', { class: 'field' }, h('span', { class: 'field-label' }, 'Du craftar'), attemptInput, h('small', null, 'st')),
    ),
    h(
      'p',
      { style: { fontSize: '1.15rem', marginTop: '10px' } },
      hit > 0
        ? frag(
            h('b', { style: { color: 'var(--ember)' } }, `${Math.round(hit * 100)} av 100 crafts`),
            ` når minst ${pct(state.target, 0)}. Craftar du ${planned} st är chansen att minst en lyckas `,
            h('b', { style: { color: 'var(--ember)' } }, pct(confidence, 1)),
            '.',
          )
        : `Ingen av ${summary.runs} körningar nådde ${pct(state.target, 0)}. Sänk kravet eller skaffa fler turer.`,
    ),
    hit > 0
      ? h(
          'p',
          { class: 'muted' },
          `För att lyckas 9 gånger av 10 behöver du ${attemptsFor(hit, 0.9)} ${attemptsFor(hit, 0.9) === 1 ? 'craft' : 'crafts'}. `,
          'Formeln är 1 - (1 - p)^n, där p är chansen per craft och n är antalet crafts. ',
          'Notera att standardvärdet ovan (ett genomsnitt) bara ger dig runt 63% chans, inte 100%.',
        )
      : null,
  );
}

/** Three real items instead of one abstract score. */
function samplePanel(summary: SimSummary): HTMLElement | null {
  const columns: [string, string, ItemState | null][] = [
    ['Dålig dag', 'p10', summary.samples.p10],
    ['Typiskt', 'median', summary.samples.median],
    ['Bra dag', 'p90', summary.samples.p90],
  ];
  if (columns.every(([, , item]) => !item)) return null;

  return section(
    'Så här ser föremålen ut',
    h(
      'div',
      { class: 'grid three' },
      ...columns.map(([label, note, item]) =>
        h(
          'div',
          { class: 'card-tile' },
          h('h3', null, h('span', null, label), h('span', { class: 'chip' }, note)),
          item
            ? frag(
                ...item.lines.map((line) => {
                  const span = line.max - line.min;
                  const share = span <= 0 ? 1 : (line.value - line.min) / span;
                  return h(
                    'div',
                    { style: { marginBottom: '8px' } },
                    h(
                      'div',
                      { class: 'spread', style: { fontSize: '0.85rem' } },
                      h('span', null, line.name),
                      h('span', { class: 'mono', style: { color: 'var(--ember)' } }, num(line.value)),
                    ),
                    bar(share, `${num(line.min)} till ${num(line.max)}`),
                  );
                }),
                h('p', { class: 'muted', style: { marginTop: '8px', marginBottom: '0' } }, `${item.echoes.length} echoes`),
              )
            : h('p', { class: 'empty' }, 'Inget föremål överlevde här.'),
        ),
      ),
    ),
  );
}

function resultPanel(state: State, summary: SimSummary, rerender: () => void): HTMLElement {
  return h(
    'div',
    null,
    confidencePanel(state, summary, rerender),
    section(
      'Resultat',
      h(
        'div',
        { class: 'grid three' },
        ...[
          ['Median', pct(summary.median), 'Hälften av dina crafts blir bättre än så här.'],
          ['Botten 10%', pct(summary.p10), 'Så illa går det en gång av tio.'],
          ['Topp 10%', pct(summary.p90), 'Så bra går det en gång av tio.'],
          ['Perfekt item', odds(summary.perfectRate), 'Varje rad nådde max.'],
          ['Förstört av Soulbet', odds(summary.destroyRate), 'Allt material borta.'],
          ['Skrotat', odds(summary.scrapRate), 'Craften avbröts, halva materialet tillbaka.'],
        ].map(([label, value, hint]) =>
          h(
            'div',
            { class: 'card-tile' },
            h('div', { class: 'field-label' }, label),
            h('div', { style: { fontSize: '1.35rem', fontFamily: 'var(--mono)', color: 'var(--ember)' } }, value),
            h('small', { class: 'muted' }, hint),
          ),
        ),
      ),
      h(
        'p',
        { class: 'muted' },
        `Snittet är ${pct(summary.mean)}, men snittet är inte mitten: ungefär 37 av 100 crafts hamnar under det. Planera efter medianen.`,
      ),
      h('h3', { style: { marginTop: '16px' } }, 'Fördelning över alla körningar'),
      histogram(summary),
      state.lines.every((line) => line.step === 1 && line.max > line.min)
        ? h(
            'p',
            { class: 'note' },
            'Alla rader på det här föremålet är heltal, och heltalsrader avrundas uppåt. Det betyder att även ett svagt procentkort flyttar raden minst ett helt steg, så den här sortens item maxas ovanligt snabbt. Föremål med decimalrader är mycket dyrare att pressa till max.',
          )
        : null,
    ),
    samplePanel(summary),
    section(
      'Per stat-rad',
      table(
        ['Rad', 'Min', 'Snitt', 'Max', 'Hur nära max'],
        state.lines.map((line, index) => {
          const mean = summary.lineMeans[index] ?? line.min;
          const span = line.max - line.min;
          return [
            line.name,
            h('span', { class: 'num mono' }, num(line.min)),
            h('span', { class: 'num mono', style: { color: 'var(--ember)' } }, num(mean)),
            h('span', { class: 'num mono' }, num(line.max)),
            bar(span <= 0 ? 1 : (mean - line.min) / span, pct(span <= 0 ? 1 : (mean - line.min) / span, 0)),
          ];
        }),
      ),
      h('p', { class: 'muted', style: { marginTop: '10px' } }, `Snitt ${num(summary.meanEchoes, 2)} echoes per item.`),
    ),
    section(
      'Exempelkörning',
      h(
        'ol',
        { class: 'mono', style: { fontSize: '0.84rem', color: 'var(--ink-dim)' } },
        ...summary.sampleLog.map((entry) => h('li', null, entry)),
      ),
      summary.sampleLog.length ? null : h('p', { class: 'empty' }, 'Ingen logg (craften överlevde inte).'),
    ),
  );
}

function comparePanel(state: State, cards: CardDef[], rerender: () => void): HTMLElement {
  const runs = Math.min(state.runs, 3000);
  const results = comparePaired(itemState(state), simConfig(state, cards), STRATEGIES, runs, state.seed).sort(
    (a, b) => b.meanDiff - a.meanDiff,
  );
  const leader = results[0];

  return section(
    'Jämför spelstilar',
    table(
      ['Spelstil', 'Median', 'Vinner mot bäst', 'Skillnad', 'Perfekt', 'Förlorat', ''],
      results.map((row) => [
        h(
          'span',
          null,
          row.strategy.name,
          row.strategy.id === state.strategyId ? h('span', { class: 'chip ember' }, 'vald') : null,
          row === leader ? h('span', { class: 'chip good' }, 'bäst') : null,
        ),
        h('span', { class: 'num mono' }, pct(row.summary.median)),
        row === leader
          ? h('span', { class: 'muted' }, 'referens')
          : row.tie
            ? h('span', { class: 'chip' }, 'för nära för att avgöra')
            : h('span', { class: 'num mono' }, `${Math.round(row.winRate * 100)} av 100`),
        row === leader
          ? h('span', { class: 'muted' }, '-')
          : h('span', { class: 'num mono' }, `${row.meanDiff >= 0 ? '+' : ''}${pct(row.meanDiff)} ± ${pct(row.ci95)}`),
        h('span', { class: 'num mono' }, pct(row.summary.perfectRate, 2)),
        h('span', { class: 'num mono' }, pct(row.summary.destroyRate + row.summary.scrapRate, 2)),
        row.strategy.id === state.strategyId
          ? null
          : h(
              'button',
              {
                class: 'tiny',
                onclick: () => {
                  state.strategyId = row.strategy.id;
                  save(state);
                  rerender();
                },
              },
              'använd',
            ),
      ]),
    ),
    h(
      'p',
      { class: 'muted' },
      `Varje spelstil körs på exakt samma ${runs} crafts, så jämförelsen är parvis och turen räknas bort. `,
      '"Vinner mot bäst" är hur ofta stilen slår den bästa på samma craft. Krockar felmarginalen med noll står det att det är för nära för att avgöra, istället för att låtsas ranka brus.',
    ),
  );
}

function turnCurve(state: State, cards: CardDef[]): HTMLElement {
  const points: { turns: number; mean: number; perfect: number }[] = [];
  for (let turns = 2; turns <= 30; turns += 2) {
    const summary = simulate({ ...itemState(state), turns }, simConfig(state, cards), 500, state.seed);
    points.push({ turns, mean: summary.mean, perfect: summary.perfectRate });
  }
  const peak = Math.max(...points.map((point) => point.mean), 0.01);

  return section(
    'Vad extra turer är värda',
    h(
      'div',
      { class: 'hist', style: { height: '150px' } },
      ...points.map((point) =>
        h('div', {
          style: { height: `${(point.mean / peak) * 100}%` },
          title: `${point.turns} turer: snitt ${pct(point.mean)}, perfekt ${pct(point.perfect, 2)}`,
        }),
      ),
    ),
    h(
      'div',
      { class: 'spread muted', style: { fontSize: '0.75rem', marginTop: '4px' } },
      h('span', null, '2 turer'),
      h('span', null, '30 turer'),
    ),
    table(
      ['Turer', 'Snitt', 'Perfekt item'],
      points.filter((_, index) => index % 2 === 0).map((point) => [
        h('span', { class: 'num mono' }, String(point.turns)),
        h('span', { class: 'num mono' }, pct(point.mean)),
        h('span', { class: 'num mono' }, pct(point.perfect, 2)),
      ]),
    ),
    h(
      'p',
      { class: 'muted' },
      'Kurvan planar ut eftersom varje procentkort bara tar en andel av gapet som är kvar. Det är därför de sista tiondelarna kostar så många turer.',
    ),
  );
}

// ------------------------------------------------------------------- page

export async function render(_params: Record<string, string>, query?: URLSearchParams): Promise<Node> {
  const data = await db();
  const state = load();

  // Deep link från en föremålssida: #/simulator?item=Copper%20Bow
  const wanted = query?.get('item');
  if (wanted) {
    const entity = data.byName.get(wanted);
    const parsed = entity ? parseStatLines(entity.statLines) : [];
    if (entity && parsed.length) {
      state.itemName = entity.name;
      state.lines = parsed.map((line) => toStatLine(line));
      state.echoSlots = entity.slots ?? 3;
      save(state);
    }
  }

  const root = h('div', null);
  let extra: 'none' | 'compare' | 'curve' = 'none';

  const rerender = () => {
    const cards = data.cards.filter((card) => !state.disabled.has(card.id));
    const summary = simulate(itemState(state), simConfig(state, cards), state.runs, state.seed);

    mount(
      root,
      h('h1', null, 'Craft-simulator'),
      h(
        'p',
        { class: 'lede' },
        'Crafting bygger på att varje procentkort tar en andel av gapet upp till max, aldrig av värdet du redan har. Det gör resultatet svårt att gissa i huvudet. Här körs hela minispelet några tusen gånger så du ser fördelningen istället för en enda tur körning.',
      ),
      h(
        'div',
        { class: 'grid two' },
        h(
          'div',
          null,
          section('Föremålet', itemPicker(data, state, rerender), h('div', { style: { marginTop: '12px' } }, lineEditor(state, rerender))),
          section('Craften', knobs(state, rerender)),
        ),
        h(
          'div',
          null,
          section('Sällsynthet på korten', weightEditor(state, rerender)),
          section('Kort i leken', cardToggles(data.cards, state, rerender)),
          h(
            'div',
            { class: 'row' },
            h('button', { class: 'primary', onclick: () => { state.seed = Math.floor(Math.random() * 999999) + 1; save(state); rerender(); } }, 'Ny seed och kör om'),
            h('button', { onclick: () => { extra = extra === 'compare' ? 'none' : 'compare'; rerender(); } }, 'Jämför spelstilar'),
            h('button', { onclick: () => { extra = extra === 'curve' ? 'none' : 'curve'; rerender(); } }, 'Turkurva'),
          ),
        ),
      ),
      resultPanel(state, summary, rerender),
      extra === 'compare' ? comparePanel(state, cards, rerender) : null,
      extra === 'curve' ? turnCurve(state, cards) : null,
      h(
        'footer',
        { class: 'site' },
        'Modellen följer wikins beskrivning av "closing the gap" och avrundning uppåt. Kortens dragchanser, Mystery Strike-spannet och rerollens fördelning är antaganden, markerade som sådana i kortlistan.',
      ),
    );
  };

  rerender();
  return root;
}
