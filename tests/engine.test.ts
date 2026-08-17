import assert from 'node:assert/strict';
import { test } from 'node:test';
import {
  applyCard,
  closeGap,
  completion,
  drawCard,
  isPerfect,
  makeRng,
  roundUpTo,
  rollRarity,
  runCraft,
  simulate,
  type CardDef,
  type DrawnCard,
  type ItemState,
  type StatLine,
} from '../src/craft/engine.ts';
import { makeGreedyStrategy } from '../src/craft/strategy.ts';

const line = (over: Partial<StatLine> = {}): StatLine => ({
  name: 'Global Attack',
  min: 2,
  max: 10,
  value: 2,
  step: 0.1,
  weight: 1,
  ...over,
});

const state = (over: Partial<ItemState> = {}): ItemState => ({
  lines: [line()],
  echoes: [],
  echoSlots: 3,
  turns: 5,
  rerolls: 2,
  destroyed: false,
  scrapped: false,
  log: [],
  ...over,
});

const card = (def: Partial<CardDef>, over: Partial<DrawnCard> = {}): DrawnCard => ({
  def: {
    id: 'x',
    name: 'Test',
    description: '',
    effect: 'gapPercentOne',
    target: 'listed',
    values: { Rare: 50 },
    rarities: ['Rare'],
    ...def,
  } as CardDef,
  rarity: 'Rare',
  lineIndex: 0,
  amount: 50,
  ...over,
});

test('closing the gap uses the distance to max, not the current value', () => {
  // The wiki's own worked example: +2.0 of a max +10.0 with a +50% card lands on +6.0.
  assert.equal(closeGap(line({ value: 2 }), 50), 6);
  // And near the top the same card is worth almost nothing: 9.0 + 75% of 1.0 = 9.8.
  assert.equal(closeGap(line({ value: 9 }), 75), 9.8);
});

test('values round up, so a max roll stays reachable', () => {
  assert.equal(roundUpTo(9.81, 0.1), 9.9);
  assert.equal(roundUpTo(4.01, 1), 5);
  assert.equal(roundUpTo(5, 1), 5);
  // 9.9 + 15% of the remaining 0.1 would be 9.915 -> rounds up to a clean max.
  assert.equal(closeGap(line({ value: 9.9 }), 15), 10);
});

test('a gap card never overshoots the maximum', () => {
  const maxed = closeGap(line({ value: 9.99 }), 100);
  assert.equal(maxed, 10);
});

test('Apotheosis maxes every line and Mastercraft only the listed one', () => {
  const before = state({ lines: [line(), line({ name: 'Defense', min: 1, max: 5, value: 1 })] });
  const all = applyCard(before, card({ effect: 'maxAll', target: 'all' }), makeRng(1));
  assert.ok(isPerfect(all));

  const one = applyCard(before, card({ effect: 'maxOne', target: 'listed' }, { lineIndex: 1 }), makeRng(1));
  assert.equal(one.lines[1].value, 5);
  assert.equal(one.lines[0].value, 2);
});

test('completion is 0 at the floor and 1 at the max', () => {
  assert.equal(completion(state()), 0);
  assert.equal(completion(state({ lines: [line({ value: 10 })] })), 1);
  assert.equal(completion(state({ lines: [line({ value: 6 })] })), 0.5);
});

test('Soulbet destroys the item exactly at its stated 50%', () => {
  const rng = makeRng(7);
  let destroyed = 0;
  const runs = 4000;
  for (let i = 0; i < runs; i++) {
    const result = applyCard(state(), card({ effect: 'gamble', target: 'random', destroyChance: 0.5 }), rng);
    if (result.destroyed) destroyed++;
  }
  assert.ok(Math.abs(destroyed / runs - 0.5) < 0.03, `destroy rate was ${destroyed / runs}`);
});

test('Echo Devotion is a no-op when there is no echo to sacrifice', () => {
  const result = applyCard(state(), card({ effect: 'gapPercentOne', consumesEcho: 1 }), makeRng(3));
  assert.equal(result.lines[0].value, 2);
});

test('echoes never exceed the item slot count', () => {
  const result = applyCard(
    state({ echoSlots: 2 }),
    card({ effect: 'addEcho', target: 'random' }, { amount: 3 }),
    makeRng(5),
  );
  assert.equal(result.echoes.length, 2);
});

test('extra-turn cards cannot spin the craft loop forever', () => {
  const always: CardDef = {
    id: 'forge',
    name: 'Boundless Forge',
    description: '',
    effect: 'extraTurns',
    target: 'none',
    values: { Legendary: 3 },
    rarities: ['Legendary'],
  };
  const result = runCraft(
    state({ turns: 3, rerolls: 0 }),
    {
      draw: { cards: [always], rarityWeights: { Common: 0, Rare: 0, Mythic: 0, Legendary: 1 } },
      strategy: makeGreedyStrategy('t', 't', ''),
    },
    makeRng(11),
  );
  assert.ok(result.turns >= 0);
});

test('rarity weights are respected', () => {
  const rng = makeRng(99);
  const counts: Record<string, number> = {};
  for (let i = 0; i < 10000; i++) {
    const rarity = rollRarity({ Common: 90, Rare: 10, Mythic: 0, Legendary: 0 }, rng);
    counts[rarity] = (counts[rarity] ?? 0) + 1;
  }
  assert.equal(counts.Mythic, undefined);
  assert.ok(Math.abs(counts.Common / 10000 - 0.9) < 0.02);
});

test('a drawn card always targets a real line when it needs one', () => {
  const rng = makeRng(4);
  const def: CardDef = {
    id: 'sharpen',
    name: 'Sharpen',
    description: '',
    effect: 'gapPercentOne',
    target: 'listed',
    values: { Common: 25 },
    rarities: ['Common'],
  };
  for (let i = 0; i < 100; i++) {
    const drawn = drawCard({ cards: [def], rarityWeights: { Common: 1, Rare: 0, Mythic: 0, Legendary: 0 } }, state(), rng);
    assert.ok(drawn.lineIndex !== null && drawn.lineIndex >= 0 && drawn.lineIndex < 1);
  }
});

test('more turns produce a better item on average', () => {
  const cards: CardDef[] = [
    {
      id: 'polish',
      name: 'Polish',
      description: '',
      effect: 'gapPercentAll',
      target: 'all',
      values: { Common: 15, Rare: 30, Mythic: 50 },
      rarities: ['Common', 'Rare', 'Mythic'],
    },
    {
      id: 'sharpen',
      name: 'Sharpen',
      description: '',
      effect: 'gapPercentOne',
      target: 'listed',
      values: { Common: 25, Rare: 55, Mythic: 70 },
      rarities: ['Common', 'Rare', 'Mythic'],
    },
  ];
  const config = {
    draw: { cards, rarityWeights: { Common: 62, Rare: 27, Mythic: 9, Legendary: 2 } },
    strategy: makeGreedyStrategy('greedy', 'greedy', ''),
  };
  const few = simulate(state({ turns: 3, rerolls: 0 }), config, 400, 42);
  const many = simulate(state({ turns: 12, rerolls: 0 }), config, 400, 42);
  assert.ok(many.mean > few.mean, `${many.mean} should beat ${few.mean}`);
  assert.ok(many.mean <= 1 && few.mean >= 0);
});

test('the same seed reproduces the same simulation', () => {
  const cards: CardDef[] = [
    {
      id: 'polish',
      name: 'Polish',
      description: '',
      effect: 'gapPercentAll',
      target: 'all',
      values: { Common: 15 },
      rarities: ['Common'],
    },
  ];
  const config = {
    draw: { cards, rarityWeights: { Common: 1, Rare: 0, Mythic: 0, Legendary: 0 } },
    strategy: makeGreedyStrategy('greedy', 'greedy', ''),
  };
  const a = simulate(state(), config, 50, 2026);
  const b = simulate(state(), config, 50, 2026);
  assert.deepEqual(a.histogram, b.histogram);
  assert.equal(a.mean, b.mean);
});
