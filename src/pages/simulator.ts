// Craft simulator: runs the crafting minigame thousands of times and shows what a
// plan is actually worth, instead of what one lucky run happened to produce.

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

  const input = h('input', { list: 'sim-items', placeholder: 'Load stats from an item', value: state.itemName, style: { minWidth: '240px' } });

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
    h('div', { class: 'field' }, h('span', { class: 'field-label' }, 'Item'), input),
    h('button', { onclick: apply }, 'Load stats'),
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
      h('span', null, 'Stat line'),
      h('span', null, 'Min'),
      h('span', null, 'Max'),
      h('span', null, 'Weight'),
      h('span', null, 'Range'),
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
            title: 'Remove this line',
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
          state.lines.push({ name: 'New stat', min: 1, max: 10, value: 1, step: 1, weight: 1 });
          save(state);
          rerender();
        },
      },
      '+ Add a line',
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
    h('div', { class: 'row' }, knob('Turns', 'turns', 1, 60), knob('Rerolls', 'rerolls', 0, 40), knob('Echo slots', 'echoSlots', 0, 8)),
    h(
      'div',
      { class: 'row', style: { marginTop: '10px' } },
      h(
        'div',
        { class: 'field' },
        h('span', { class: 'field-label' }, 'Playstyle'),
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
      knob('Runs', 'runs', 100, 20000),
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
        'Reset',
      ),
    ),
    h(
      'p',
      { class: 'note assumed' },
      'The game does not publish how often each rarity shows up. The numbers above are an assumed distribution, not measured data. Change them if you have your own measurements and everything recalculates.',
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
          title: `${pct(row.bucket, 0)} to ${pct(row.bucket + 0.05, 0)}: ${row.count} runs`,
        }),
      ),
    ),
    h(
      'div',
      { class: 'spread muted', style: { fontSize: '0.75rem', marginTop: '4px' } },
      h('span', null, '0% of max stats'),
      h('span', null, '100%'),
    ),
  );
}

/** "0,84%" plus the frequency people actually feel, "1 av 119". */
function odds(p: number, digits = 2): string {
  if (p <= 0) return 'never';
  if (p >= 1) return 'always';
  // The "1 in N" form only helps for rare things; at 95% it just reads as "1 in 1".
  return p < 0.25 ? `${pct(p, digits)} · 1 in ${Math.round(1 / p)}` : pct(p, digits);
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
    'How many do you have to craft?',
    h(
      'div',
      { class: 'row center' },
      h('div', { class: 'field' }, h('span', { class: 'field-label' }, 'Good enough at'), targetInput, h('small', null, `${pct(state.target, 0)} of max stats`)),
      h('div', { class: 'field' }, h('span', { class: 'field-label' }, 'You craft'), attemptInput, h('small', null, 'items')),
    ),
    h(
      'p',
      { style: { fontSize: '1.15rem', marginTop: '10px' } },
      hit > 0
        ? frag(
            h('b', { style: { color: 'var(--ember)' } }, `${Math.round(hit * 100)} out of 100 crafts`),
            ` reach at least ${pct(state.target, 0)}. Craft ${planned} of them and the chance that at least one lands is `,
            h('b', { style: { color: 'var(--ember)' } }, pct(confidence, 1)),
            '.',
          )
        : `None of the ${summary.runs} runs reached ${pct(state.target, 0)}. Lower the bar or get more turns.`,
    ),
    hit > 0
      ? h(
          'p',
          { class: 'muted' },
          `To succeed 9 times out of 10 you need ${attemptsFor(hit, 0.9)} ${attemptsFor(hit, 0.9) === 1 ? 'craft' : 'crafts'}. `,
          'The formula is 1 - (1 - p)^n, where p is the chance per craft and n is the number of crafts. ',
          'Note that the default above, the average, only gets you to around 63%, not 100%.',
        )
      : null,
  );
}

/** Three real items instead of one abstract score. */
function samplePanel(summary: SimSummary): HTMLElement | null {
  const columns: [string, string, ItemState | null][] = [
    ['Bad day', 'p10', summary.samples.p10],
    ['Typical', 'median', summary.samples.median],
    ['Good day', 'p90', summary.samples.p90],
  ];
  if (columns.every(([, , item]) => !item)) return null;

  return section(
    'What the items look like',
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
                    bar(share, `${num(line.min)} to ${num(line.max)}`),
                  );
                }),
                h('p', { class: 'muted', style: { marginTop: '8px', marginBottom: '0' } }, `${item.echoes.length} echoes`),
              )
            : h('p', { class: 'empty' }, 'No item survived here.'),
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
      'Results',
      h(
        'div',
        { class: 'grid three' },
        ...[
          ['Median', pct(summary.median), 'Half your crafts come out better than this.'],
          ['Bottom 10%', pct(summary.p10), 'It goes this badly one time in ten.'],
          ['Top 10%', pct(summary.p90), 'It goes this well one time in ten.'],
          ['Perfect item', odds(summary.perfectRate), 'Every line reached its maximum.'],
          ['Destroyed by Soulbet', odds(summary.destroyRate), 'Every material gone.'],
          ['Scrapped', odds(summary.scrapRate), 'Craft abandoned, half the materials back.'],
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
        `The mean is ${pct(summary.mean)}, but the mean is not the middle: roughly 37 out of 100 crafts land below it. Plan around the median.`,
      ),
      h('h3', { style: { marginTop: '16px' } }, 'Spread across every run'),
      histogram(summary),
      state.lines.every((line) => line.step === 1 && line.max > line.min)
        ? h(
            'p',
            { class: 'note' },
            'Every line on this item is a whole number, and whole-number lines round up. That means even a weak percentage card moves the line by at least one full step, so this kind of item maxes out unusually fast. Items with decimal lines are far more expensive to push to the maximum.',
          )
        : null,
    ),
    samplePanel(summary),
    section(
      'Per stat line',
      table(
        ['Line', 'Min', 'Mean', 'Max', 'How close to max'],
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
      h('p', { class: 'muted', style: { marginTop: '10px' } }, `${num(summary.meanEchoes, 2)} echoes per item on average.`),
    ),
    section(
      'Example run',
      h(
        'ol',
        { class: 'mono', style: { fontSize: '0.84rem', color: 'var(--ink-dim)' } },
        ...summary.sampleLog.map((entry) => h('li', null, entry)),
      ),
      summary.sampleLog.length ? null : h('p', { class: 'empty' }, 'No log: the craft did not survive.'),
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
    'Compare playstyles',
    table(
      ['Playstyle', 'Median', 'Beats the best', 'Difference', 'Perfect', 'Lost', ''],
      results.map((row) => [
        h(
          'span',
          null,
          row.strategy.name,
          row.strategy.id === state.strategyId ? h('span', { class: 'chip ember' }, 'vald') : null,
          row === leader ? h('span', { class: 'chip good' }, 'best') : null,
        ),
        h('span', { class: 'num mono' }, pct(row.summary.median)),
        row === leader
          ? h('span', { class: 'muted' }, 'baseline')
          : row.tie
            ? h('span', { class: 'chip' }, 'too close to call')
            : h('span', { class: 'num mono' }, `${Math.round(row.winRate * 100)} in 100`),
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
              'use it',
            ),
      ]),
    ),
    h(
      'p',
      { class: 'muted' },
      `Every playstyle runs on exactly the same ${runs} crafts, so the comparison is paired and luck cancels out. `,
      '"Beats the best" is how often that style beats the leader on the same craft. When the margin of error crosses zero it says so, instead of pretending to rank noise.',
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
    'What extra turns are worth',
    h(
      'div',
      { class: 'hist', style: { height: '150px' } },
      ...points.map((point) =>
        h('div', {
          style: { height: `${(point.mean / peak) * 100}%` },
          title: `${point.turns} turns: mean ${pct(point.mean)}, perfect ${pct(point.perfect, 2)}`,
        }),
      ),
    ),
    h(
      'div',
      { class: 'spread muted', style: { fontSize: '0.75rem', marginTop: '4px' } },
      h('span', null, '2 turns'),
      h('span', null, '30 turns'),
    ),
    table(
      ['Turns', 'Mean', 'Perfect item'],
      points.filter((_, index) => index % 2 === 0).map((point) => [
        h('span', { class: 'num mono' }, String(point.turns)),
        h('span', { class: 'num mono' }, pct(point.mean)),
        h('span', { class: 'num mono' }, pct(point.perfect, 2)),
      ]),
    ),
    h(
      'p',
      { class: 'muted' },
      'The curve flattens because each percentage card only takes a share of the gap that is left. That is why the last tenths cost so many turns.',
    ),
  );
}

// ------------------------------------------------------------------- page

export async function render(_params: Record<string, string>, query?: URLSearchParams): Promise<Node> {
  const data = await db();
  const state = load();

  // Deep link from an item page: #/simulator?item=Copper%20Bow
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
      h('h1', null, 'Craft simulator'),
      h(
        'p',
        { class: 'lede' },
        'Crafting works by having each percentage card take a share of the gap up to the maximum, never a share of the value you already have. That makes the outcome hard to guess in your head. Here the whole minigame runs a few thousand times, so you see the spread instead of one lucky run.',
      ),
      h(
        'div',
        { class: 'grid two' },
        h(
          'div',
          null,
          section('The item', itemPicker(data, state, rerender), h('div', { style: { marginTop: '12px' } }, lineEditor(state, rerender))),
          section('The craft', knobs(state, rerender)),
        ),
        h(
          'div',
          null,
          section('Card rarity', weightEditor(state, rerender)),
          section('Cards in the deck', cardToggles(data.cards, state, rerender)),
          h(
            'div',
            { class: 'row' },
            h('button', { class: 'primary', onclick: () => { state.seed = Math.floor(Math.random() * 999999) + 1; save(state); rerender(); } }, 'New seed, run again'),
            h('button', { onclick: () => { extra = extra === 'compare' ? 'none' : 'compare'; rerender(); } }, 'Compare playstyles'),
            h('button', { onclick: () => { extra = extra === 'curve' ? 'none' : 'curve'; rerender(); } }, 'Turn curve'),
          ),
        ),
      ),
      resultPanel(state, summary, rerender),
      extra === 'compare' ? comparePanel(state, cards, rerender) : null,
      extra === 'curve' ? turnCurve(state, cards) : null,
      h(
        'footer',
        { class: 'site' },
        'The model follows the wiki description of closing the gap and rounding up. Card draw chances, the Mystery Strike range and the reroll distribution are assumptions, flagged as such in the card list.',
      ),
    );
  };

  rerender();
  return root;
}
