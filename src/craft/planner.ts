// Recursive material expansion for the crafting planner.
// Pure: give it recipes + targets, get back a tree, a shopping list and a craft order.

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
  qty: number;
  /** what the player already has, subtracted before expanding */
  covered: number;
  recipe: Recipe | null;
  /** number of times the recipe must be run */
  crafts: number;
  children: PlanNode[];
  depth: number;
  cyclic?: boolean;
}

export interface PlanStep {
  name: string;
  crafts: number;
  qty: number;
  profession: string;
  level: number | null;
  /** deepest first: things you must craft before the things that consume them */
  tier: number;
}

export interface Plan {
  roots: PlanNode[];
  /** raw materials that no recipe produces */
  rawTotals: { name: string; qty: number }[];
  /** everything that has to be crafted, ordered bottom-up */
  steps: PlanStep[];
  /** highest profession level the plan demands */
  levelByProfession: Record<string, number>;
  warnings: string[];
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
  const have = { ...(options.have ?? {}) };
  const maxDepth = options.maxDepth ?? 12;
  const warnings: string[] = [];
  const rawTotals = new Map<string, number>();
  const stepTotals = new Map<string, PlanStep>();
  const levelByProfession: Record<string, number> = {};

  const expand = (name: string, qty: number, depth: number, chain: Set<string>): PlanNode => {
    // Spend what the player already owns first.
    const owned = Math.min(have[name] ?? 0, qty);
    if (owned > 0) have[name] = (have[name] ?? 0) - owned;
    const needed = qty - owned;

    const node: PlanNode = { name, qty, covered: owned, recipe: null, crafts: 0, children: [], depth };
    if (needed <= 0) return node;

    const candidates = byOutput.get(name) ?? [];
    const chosenId = options.chosenRecipe?.[name];
    const recipe = options.treatAsRaw?.has(name)
      ? undefined
      : (chosenId ? candidates.find((each) => each.id === chosenId) : undefined) ?? candidates[0];

    if (!recipe) {
      rawTotals.set(name, (rawTotals.get(name) ?? 0) + needed);
      return node;
    }

    if (chain.has(name)) {
      node.cyclic = true;
      warnings.push(`${name} ingår i sitt eget recept, expanderar inte vidare.`);
      rawTotals.set(name, (rawTotals.get(name) ?? 0) + needed);
      return node;
    }
    if (depth >= maxDepth) {
      warnings.push(`Slutade expandera ${name} vid djup ${maxDepth}.`);
      rawTotals.set(name, (rawTotals.get(name) ?? 0) + needed);
      return node;
    }

    const crafts = Math.ceil(needed / (recipe.outputQty || 1));
    node.recipe = recipe;
    node.crafts = crafts;

    const step = stepTotals.get(name) ?? {
      name,
      crafts: 0,
      qty: 0,
      profession: recipe.profession,
      level: recipe.level,
      tier: depth,
    };
    step.crafts += crafts;
    step.qty += crafts * (recipe.outputQty || 1);
    step.tier = Math.max(step.tier, depth);
    stepTotals.set(name, step);

    if (recipe.level != null) {
      levelByProfession[recipe.profession] = Math.max(levelByProfession[recipe.profession] ?? 0, recipe.level);
    }

    const nextChain = new Set(chain).add(name);
    for (const input of recipe.inputs) {
      node.children.push(expand(input.name, input.qty * crafts, depth + 1, nextChain));
    }
    return node;
  };

  const roots = targets
    .filter((target) => target.name && target.qty > 0)
    .map((target) => expand(target.name, target.qty, 0, new Set()));

  return {
    roots,
    rawTotals: [...rawTotals.entries()]
      .map(([name, qty]) => ({ name, qty }))
      .sort((a, b) => b.qty - a.qty || a.name.localeCompare(b.name)),
    // Deepest tier first: you cannot smelt the ingot after you need it.
    steps: [...stepTotals.values()].sort((a, b) => b.tier - a.tier || a.name.localeCompare(b.name)),
    levelByProfession,
    warnings: [...new Set(warnings)],
  };
}
