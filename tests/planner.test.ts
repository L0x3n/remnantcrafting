import assert from 'node:assert/strict';
import { test } from 'node:test';
import { planCraft, type Recipe } from '../src/craft/planner.ts';

const recipe = (over: Partial<Recipe>): Recipe => ({
  id: over.id ?? `${over.output}-r`,
  output: 'Copper Ingot',
  outputQty: 1,
  profession: 'Weapon Smithing',
  level: 5,
  inputs: [{ name: 'Copper Ore', qty: 2 }],
  ...over,
});

const RECIPES: Recipe[] = [
  recipe({}),
  recipe({
    id: 'bow',
    output: 'Copper Bow',
    profession: 'Weapon Smithing',
    level: 8,
    inputs: [
      { name: 'Copper Ingot', qty: 15 },
      { name: 'Dull Nurturing Essence', qty: 20 },
    ],
  }),
];

test('a recipe tree multiplies quantities all the way down', () => {
  const plan = planCraft([{ name: 'Copper Bow', qty: 2 }], RECIPES);
  const ore = plan.rawTotals.find((row) => row.name === 'Copper Ore');
  // 2 bows -> 30 ingots -> 60 ore
  assert.equal(ore?.qty, 60);
  assert.equal(plan.rawTotals.find((row) => row.name === 'Dull Nurturing Essence')?.qty, 40);
});

test('materials on hand are subtracted before expanding', () => {
  const plan = planCraft([{ name: 'Copper Bow', qty: 1 }], RECIPES, { have: { 'Copper Ingot': 15 } });
  assert.equal(plan.rawTotals.find((row) => row.name === 'Copper Ore'), undefined);
  assert.equal(plan.steps.find((step) => step.name === 'Copper Ingot'), undefined);
});

test('partial stock only covers part of the requirement', () => {
  const plan = planCraft([{ name: 'Copper Bow', qty: 1 }], RECIPES, { have: { 'Copper Ingot': 5 } });
  assert.equal(plan.rawTotals.find((row) => row.name === 'Copper Ore')?.qty, 20);
});

test('craft steps come out bottom-up', () => {
  const plan = planCraft([{ name: 'Copper Bow', qty: 1 }], RECIPES);
  assert.deepEqual(plan.steps.map((step) => step.name), ['Copper Ingot', 'Copper Bow']);
});

test('the plan reports the profession level it demands', () => {
  const plan = planCraft([{ name: 'Copper Bow', qty: 1 }], RECIPES);
  assert.equal(plan.levelByProfession['Weapon Smithing'], 8);
});

test('an item can be pinned as raw instead of crafted', () => {
  const plan = planCraft([{ name: 'Copper Bow', qty: 1 }], RECIPES, { treatAsRaw: new Set(['Copper Ingot']) });
  assert.equal(plan.rawTotals.find((row) => row.name === 'Copper Ingot')?.qty, 15);
});

test('recipes that produce more than one unit round up the craft count', () => {
  const plan = planCraft([{ name: 'Potion', qty: 5 }], [
    recipe({ id: 'potion', output: 'Potion', outputQty: 2, profession: 'Alchemy', level: 1, inputs: [{ name: 'Herb', qty: 3 }] }),
  ]);
  // 5 potions needs 3 crafts of 2, so 9 herbs.
  assert.equal(plan.steps[0].crafts, 3);
  assert.equal(plan.rawTotals[0].qty, 9);
});

test('a self-referential recipe is stopped instead of looping', () => {
  const plan = planCraft([{ name: 'Loop', qty: 1 }], [
    recipe({ id: 'loop', output: 'Loop', inputs: [{ name: 'Loop', qty: 2 }] }),
  ]);
  assert.ok(plan.warnings.some((warning) => warning.includes('Loop')));
  assert.ok(plan.rawTotals.some((row) => row.name === 'Loop'));
});

test('the lowest-level recipe is the default route', () => {
  const plan = planCraft([{ name: 'Thing', qty: 1 }], [
    recipe({ id: 'hard', output: 'Thing', level: 40, inputs: [{ name: 'Rare Bar', qty: 1 }] }),
    recipe({ id: 'easy', output: 'Thing', level: 3, inputs: [{ name: 'Plain Bar', qty: 1 }] }),
  ]);
  assert.equal(plan.rawTotals[0].name, 'Plain Bar');
});

test('an alternative recipe can be selected explicitly', () => {
  const plan = planCraft([{ name: 'Thing', qty: 1 }], [
    recipe({ id: 'hard', output: 'Thing', level: 40, inputs: [{ name: 'Rare Bar', qty: 1 }] }),
    recipe({ id: 'easy', output: 'Thing', level: 3, inputs: [{ name: 'Plain Bar', qty: 1 }] }),
  ], { chosenRecipe: { Thing: 'hard' } });
  assert.equal(plan.rawTotals[0].name, 'Rare Bar');
});

test('several targets share one shopping list', () => {
  const plan = planCraft([
    { name: 'Copper Bow', qty: 1 },
    { name: 'Copper Ingot', qty: 5 },
  ], RECIPES);
  assert.equal(plan.rawTotals.find((row) => row.name === 'Copper Ore')?.qty, 40);
});
