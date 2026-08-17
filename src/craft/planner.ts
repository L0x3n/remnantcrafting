// Material expansion for the crafting planner.
// Pure: give it recipes + targets, get back a tree, a shopping list and a craft order.
//
// Demand is pooled across the whole plan before any craft count is rounded. That
// matters for recipes that yield more than one unit: if two branches each need 2 of
// something a recipe makes 5 of, that is one craft, not two.

export interface Recipe {
  id: string;
  output: string;
  outputQty: number;
  profession: string;
  level: number | null;
  inputs: { name: string; qty: number }[];
}

export interface PlanNode {
  name: string;
  /** how much this branch needs, before pooling with other branches */
  qty: number;
  recipe: Recipe | null;
  children: PlanNode[];
  depth: number;
  /** true when other branches need this item too, so its craft count is pooled */
  shared?: boolean;
  cyclic?: boolean;
}

export interface PlanStep {
  name: string;
  crafts: number;
  /** units produced, which can exceed what the plan needs when a recipe yields several */
  qty: number;
  /** units the plan actually consumes */
  needed: number;
  /** units taken from what the player already owns */
  covered: number;
  profession: string;
  level: number | null;
  /** craft order index: lower comes first */
  tier: number;
}

export interface Plan {
  roots: PlanNode[];
  /** raw materials that no recipe produces */
  rawTotals: { name: string; qty: number; covered: number }[];
  /** everything that has to be crafted, in the order you must craft it */
  steps: PlanStep[];
  /** highest profession level the plan demands */
  levelByProfession: Record<string, number>;
  warnings: string[];
  /** crafts saved by pooling demand instead of rounding up per branch */
  pooledSavings: { name: string; saved: number }[];
}

export interface PlanOptions {
  /** name -> quantity already in the bank */
  have?: Record<string, number>;
  /** name -> recipe id, when an item has more than one recipe */
  chosenRecipe?: Record<string, string>;
  /** names the player wants to buy/farm rather than craft */
  treatAsRaw?: Set<string>;
  maxDepth?: number;
}

export function indexRecipes(recipes: Recipe[]): Map<string, Recipe[]> {
  const byOutput = new Map<string, Recipe[]>();
  for (const recipe of recipes) {
    const list = byOutput.get(recipe.output) ?? [];
    list.push(recipe);
    byOutput.set(recipe.output, list);
  }
  // Prefer the lowest profession level as the default route: it is the one a
  // player can actually reach first.
  for (const list of byOutput.values()) {
    list.sort((a, b) => (a.level ?? 99) - (b.level ?? 99) || a.inputs.length - b.inputs.length);
  }
  return byOutput;
}

export function planCraft(
  targets: { name: string; qty: number }[],
  recipes: Recipe[],
  options: PlanOptions = {},
): Plan {
  const byOutput = indexRecipes(recipes);
  const maxDepth = options.maxDepth ?? 12;
  const warnings: string[] = [];

  // Items forced to count as raw: the player pinned them, or expanding them would
  // loop or run past the depth cap.
  const raw = new Set<string>(options.treatAsRaw ?? []);

  const recipeFor = (name: string): Recipe | null => {
    if (raw.has(name)) return null;
    const candidates = byOutput.get(name) ?? [];
    const chosenId = options.chosenRecipe?.[name];
    return (chosenId ? candidates.find((each) => each.id === chosenId) : undefined) ?? candidates[0] ?? null;
  };

  const wanted = targets.filter((target) => target.name && target.qty > 0);

  // ---- pass 1: walk the graph once to find cycles and depth-capped branches.
  const visitState = new Map<string, 'open' | 'done'>();
  const findBreaks = (name: string, depth: number): void => {
    if (raw.has(name)) return;
    if (visitState.get(name) === 'open') {
      raw.add(name);
      warnings.push(`${name} ingår i sitt eget recept, expanderar inte vidare.`);
      return;
    }
    if (visitState.get(name) === 'done') return;
    const recipe = recipeFor(name);
    if (!recipe) return;
    if (depth >= maxDepth) {
      raw.add(name);
      warnings.push(`Slutade expandera ${name} vid djup ${maxDepth}.`);
      return;
    }
    visitState.set(name, 'open');
    for (const input of recipe.inputs) findBreaks(input.name, depth + 1);
    visitState.set(name, 'done');
  };
  for (const target of wanted) findBreaks(target.name, 0);

  // ---- pass 2: order items so every consumer is handled before what it consumes.
  const pending = new Map<string, number>(); // item -> consumers not yet processed
  const edges = new Map<string, string[]>(); // item -> its inputs
  const seen = new Set<string>();

  const collect = (name: string): void => {
    if (seen.has(name)) return;
    seen.add(name);
    pending.set(name, pending.get(name) ?? 0);
    const recipe = recipeFor(name);
    if (!recipe) return;
    const inputs = [...new Set(recipe.inputs.map((input) => input.name))];
    edges.set(name, inputs);
    for (const input of inputs) {
      pending.set(input, (pending.get(input) ?? 0) + 1);
      collect(input);
    }
  };
  for (const target of wanted) collect(target.name);

  const order: string[] = [];
  const ready = [...pending.entries()].filter(([, count]) => count === 0).map(([name]) => name);
  while (ready.length) {
    const name = ready.shift()!;
    order.push(name);
    for (const input of edges.get(name) ?? []) {
      const left = (pending.get(input) ?? 1) - 1;
      pending.set(input, left);
      if (left === 0) ready.push(input);
    }
  }
  // Anything left is part of a knot pass 1 did not break; process it anyway so the
  // plan is still usable, and say so.
  for (const name of seen) {
    if (!order.includes(name)) {
      order.push(name);
      warnings.push(`${name} kunde inte ordnas i craft-ordningen, receptkedjan går i cirkel.`);
    }
  }

  // ---- pass 3: pool demand, then round craft counts once per item.
  const have = { ...(options.have ?? {}) };
  const demand = new Map<string, number>();
  const branchCrafts = new Map<string, number>(); // what per-branch rounding would have cost
  const stepByName = new Map<string, PlanStep>();
  const rawTotals = new Map<string, { qty: number; covered: number }>();
  const levelByProfession: Record<string, number> = {};

  for (const target of wanted) demand.set(target.name, (demand.get(target.name) ?? 0) + target.qty);

  order.forEach((name, index) => {
    const total = demand.get(name) ?? 0;
    if (total <= 0) return;

    const covered = Math.min(have[name] ?? 0, total);
    if (covered > 0) have[name] = (have[name] ?? 0) - covered;
    const needed = total - covered;

    const recipe = recipeFor(name);
    if (!recipe) {
      const row = rawTotals.get(name) ?? { qty: 0, covered: 0 };
      row.qty += needed;
      row.covered += covered;
      rawTotals.set(name, row);
      return;
    }
    if (needed <= 0) return;

    const outputQty = recipe.outputQty || 1;
    const crafts = Math.ceil(needed / outputQty);

    stepByName.set(name, {
      name,
      crafts,
      qty: crafts * outputQty,
      needed,
      covered,
      profession: recipe.profession,
      level: recipe.level,
      tier: index,
    });

    if (recipe.level != null) {
      levelByProfession[recipe.profession] = Math.max(levelByProfession[recipe.profession] ?? 0, recipe.level);
    }

    for (const input of recipe.inputs) {
      demand.set(input.name, (demand.get(input.name) ?? 0) + input.qty * crafts);
    }
  });

  // ---- pass 4: the display tree, showing what each branch needs on its own.
  const consumerCount = new Map<string, number>();
  const buildTree = (name: string, qty: number, depth: number, chain: Set<string>): PlanNode => {
    const recipe = chain.has(name) ? null : recipeFor(name);
    const node: PlanNode = { name, qty, recipe, children: [], depth, cyclic: chain.has(name) || undefined };
    if (!recipe) return node;

    const outputQty = recipe.outputQty || 1;
    const runs = Math.ceil(qty / outputQty);
    branchCrafts.set(name, (branchCrafts.get(name) ?? 0) + runs);
    consumerCount.set(name, (consumerCount.get(name) ?? 0) + 1);

    const next = new Set(chain).add(name);
    for (const input of recipe.inputs) {
      node.children.push(buildTree(input.name, input.qty * runs, depth + 1, next));
    }
    return node;
  };
  const roots = wanted.map((target) => buildTree(target.name, target.qty, 0, new Set()));
  for (const [name, count] of consumerCount) {
    if (count > 1) {
      const mark = (node: PlanNode): void => {
        if (node.name === name) node.shared = true;
        node.children.forEach(mark);
      };
      roots.forEach(mark);
    }
  }

  const pooledSavings = [...stepByName.values()]
    .map((step) => ({ name: step.name, saved: (branchCrafts.get(step.name) ?? step.crafts) - step.crafts }))
    .filter((row) => row.saved > 0);

  return {
    roots,
    rawTotals: [...rawTotals.entries()]
      .map(([name, row]) => ({ name, qty: row.qty, covered: row.covered }))
      .filter((row) => row.qty > 0 || row.covered > 0)
      .sort((a, b) => b.qty - a.qty || a.name.localeCompare(b.name)),
    // Highest tier index first: you cannot smelt the ingot after you need it.
    steps: [...stepByName.values()].sort((a, b) => b.tier - a.tier || a.name.localeCompare(b.name)),
    levelByProfession,
    warnings: [...new Set(warnings)],
    pooledSavings,
  };
}
