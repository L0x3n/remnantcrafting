// Pure model of the Soul's Remnant crafting minigame.
// No DOM, no randomness that isn't seeded: everything here is testable and
// reproducible, which is the whole point of a theorycrafting tool.

export type Rarity = 'Common' | 'Rare' | 'Mythic' | 'Legendary';

export interface CardDef {
  id: string;
  name: string;
  description: string;
  effect:
    | 'gapPercentAll'
    | 'gapPercentOne'
    | 'flatStat'
    | 'echoLevel'
    | 'maxOne'
    | 'maxAll'
    | 'gamble'
    | 'rerollStat'
    | 'addEcho'
    | 'echoTrade'
    | 'extraTurns'
    | 'scrap';
  target: 'all' | 'one' | 'listed' | 'random' | 'listedEcho' | 'none';
  values: Partial<Record<Rarity, number | null>>;
  rarities: Rarity[];
  randomPercentRange?: [number, number];
  consumesEcho?: number;
  destroyChance?: number;
  assumed?: boolean;
  note?: string;
}

export interface StatLine {
  /** e.g. "Global Attack" */
  name: string;
  min: number;
  max: number;
  value: number;
  /** 0.1 for decimal lines, 1 for whole-number lines */
  step: number;
  /** how much this line is worth to the player, used for scoring and greedy choices */
  weight: number;
}

export interface ItemState {
  lines: StatLine[];
  echoes: { name: string; level: number }[];
  echoSlots: number;
  turns: number;
  rerolls: number;
  destroyed: boolean;
  scrapped: boolean;
  log: string[];
}

/** A card as it appears on the table: a definition, a rolled rarity, and (for "listed" cards) a target. */
export interface DrawnCard {
  def: CardDef;
  rarity: Rarity;
  lineIndex: number | null;
  /** resolved numeric magnitude for this draw (Mystery Strike rolls one) */
  amount: number;
}

// ------------------------------------------------------------------ rng

export type Rng = () => number;

/** mulberry32 — small, fast, and seedable so every simulation is reproducible. */
export function makeRng(seed: number): Rng {
  let a = seed >>> 0;
  return () => {
    a = (a + 0x6d2b79f5) >>> 0;
    let t = Math.imul(a ^ (a >>> 15), 1 | a);
    t = (t + Math.imul(t ^ (t >>> 7), 61 | t)) ^ t;
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
  };
}

const pick = <T>(list: readonly T[], rng: Rng): T => list[Math.floor(rng() * list.length)];

// -------------------------------------------------------------- rounding

/**
 * The wiki states line values are rounded UP to the tenth decimal place, and that
 * whole-number lines round up too. That upward rounding is what makes a perfect
 * roll reachable at all, so it matters.
 */
export function roundUpTo(value: number, step: number): number {
  const scaled = value / step;
  const rounded = Math.ceil(scaled - 1e-9) * step;
  return Number(rounded.toFixed(6));
}

/**
 * "Closing the gap": a +N% card moves the line N% of the way from its current
 * value toward its maximum, not N% of its current value.
 */
export function closeGap(line: StatLine, percent: number): number {
  const gap = line.max - line.value;
  if (gap <= 0) return line.value;
  return Math.min(line.max, roundUpTo(line.value + (gap * percent) / 100, line.step));
}

// --------------------------------------------------------------- scoring

/** 0 = every line at its floor, 1 = every line maxed. Weighted by the player's priorities. */
export function completion(state: ItemState): number {
  let total = 0;
  let weight = 0;
  for (const line of state.lines) {
    const span = line.max - line.min;
    const share = span <= 0 ? 1 : (line.value - line.min) / span;
    total += share * line.weight;
    weight += line.weight;
  }
  return weight === 0 ? 0 : total / weight;
}

export function isPerfect(state: ItemState): boolean {
  return state.lines.every((line) => line.value >= line.max - 1e-9);
}

// ----------------------------------------------------------------- draws

export interface DrawConfig {
  cards: CardDef[];
  rarityWeights: Record<Rarity, number>;
  /** cards the player has disabled in the UI */
  disabled?: Set<string>;
}

export function rollRarity(weights: Record<Rarity, number>, rng: Rng): Rarity {
  const entries = (Object.keys(weights) as Rarity[]).map((rarity) => [rarity, Math.max(0, weights[rarity])] as const);
  const total = entries.reduce((sum, [, w]) => sum + w, 0);
  if (total <= 0) return 'Common';
  let roll = rng() * total;
  for (const [rarity, w] of entries) {
    roll -= w;
    if (roll <= 0) return rarity;
  }
  return entries[entries.length - 1][0];
}

export function drawCard(config: DrawConfig, state: ItemState, rng: Rng): DrawnCard {
  const pool = config.cards.filter((card) => !config.disabled?.has(card.id));
  // Roll a rarity, then a card that exists at that rarity. If the rolled rarity has
  // no enabled cards we fall back to the whole pool rather than looping forever.
  const rarity = rollRarity(config.rarityWeights, rng);
  const atRarity = pool.filter((card) => card.rarities.includes(rarity));
  const def = pick(atRarity.length ? atRarity : pool, rng);
  const actualRarity = atRarity.length ? rarity : def.rarities[0];

  let amount = def.values[actualRarity] ?? 0;
  if (def.randomPercentRange) {
    const [lo, hi] = def.randomPercentRange;
    amount = lo + rng() * (hi - lo);
  }

  const needsLine = def.target === 'listed' || def.target === 'one';
  return {
    def,
    rarity: actualRarity,
    lineIndex: needsLine && state.lines.length ? Math.floor(rng() * state.lines.length) : null,
    amount: amount ?? 0,
  };
}

export function drawHand(config: DrawConfig, state: ItemState, rng: Rng, size = 3): DrawnCard[] {
  return Array.from({ length: size }, () => drawCard(config, state, rng));
}

// ---------------------------------------------------------------- effects

const cloneState = (state: ItemState): ItemState => ({
  ...state,
  lines: state.lines.map((line) => ({ ...line })),
  echoes: state.echoes.map((echo) => ({ ...echo })),
  log: [...state.log],
});

const ECHO_POOL = ['Unknown Echo'];

export function applyCard(state: ItemState, card: DrawnCard, rng: Rng, echoPool: string[] = ECHO_POOL): ItemState {
  const next = cloneState(state);
  const { def, amount } = card;
  const targetIndex = card.lineIndex ?? (next.lines.length ? Math.floor(rng() * next.lines.length) : -1);
  const line = targetIndex >= 0 ? next.lines[targetIndex] : undefined;
  const label = `${def.name} (${card.rarity})`;

  switch (def.effect) {
    case 'gapPercentAll': {
      for (const each of next.lines) each.value = closeGap(each, amount);
      next.log.push(`${label}: closes ${amount}% of the gap on every line`);
      break;
    }
    case 'gapPercentOne': {
      if (!line) break;
      if (def.consumesEcho) {
        if (next.echoes.length < def.consumesEcho) {
          next.log.push(`${label}: skipped, no echo to sacrifice`);
          break;
        }
        next.echoes.splice(0, def.consumesEcho);
      }
      const before = line.value;
      line.value = closeGap(line, amount);
      next.log.push(`${label}: ${line.name} ${before} → ${line.value}`);
      break;
    }
    case 'flatStat': {
      if (!line) break;
      line.value = Math.min(line.max, roundUpTo(line.value + amount, line.step));
      next.log.push(`${label}: ${line.name} +${amount}`);
      break;
    }
    case 'echoLevel': {
      if (!next.echoes.length) {
        next.log.push(`${label}: skipped, no echo to enhance`);
        break;
      }
      const echo = next.echoes[Math.floor(rng() * next.echoes.length)];
      echo.level += amount;
      next.log.push(`${label}: ${echo.name} → level ${echo.level}`);
      break;
    }
    case 'maxOne': {
      if (!line) break;
      line.value = line.max;
      next.log.push(`${label}: ${line.name} maxed`);
      break;
    }
    case 'maxAll': {
      for (const each of next.lines) each.value = each.max;
      next.log.push(`${label}: every line maxed`);
      break;
    }
    case 'gamble': {
      if (rng() < (def.destroyChance ?? 0.5)) {
        next.destroyed = true;
        next.log.push(`${label}: the item was destroyed`);
      } else if (line) {
        line.value = line.max;
        next.log.push(`${label}: ${line.name} maxed`);
      }
      break;
    }
    case 'rerollStat': {
      const targets = def.target === 'all' ? next.lines : line ? [line] : [];
      for (const each of targets) {
        each.value = roundUpTo(each.min + rng() * (each.max - each.min), each.step);
      }
      next.log.push(`${label}: rerolled ${def.target === 'all' ? 'every line' : (line?.name ?? '-')}`);
      break;
    }
    case 'addEcho': {
      const count = amount || 1;
      for (let i = 0; i < count; i++) {
        if (next.echoes.length >= next.echoSlots) break;
        next.echoes.push({ name: pick(echoPool, rng), level: 1 });
      }
      next.log.push(`${label}: +${count} echo`);
      break;
    }
    case 'echoTrade': {
      for (const each of next.lines) {
        const drop = (each.value - each.min) * (amount / 100);
        each.value = roundUpTo(Math.max(each.min, each.value - drop), each.step);
      }
      for (let i = 0; i < 2; i++) {
        if (next.echoes.length >= next.echoSlots) break;
        next.echoes.push({ name: pick(echoPool, rng), level: 1 });
      }
      next.log.push(`${label}: -${amount}% on every line, +2 echoes`);
      break;
    }
    case 'extraTurns': {
      next.turns += amount;
      next.log.push(`${label}: +${amount} turns`);
      break;
    }
    case 'scrap': {
      next.scrapped = true;
      next.log.push(`${label}: craft abandoned, ${amount}% of materials refunded`);
      break;
    }
  }

  return next;
}

// ------------------------------------------------------------- simulation

export interface Strategy {
  id: string;
  name: string;
  description: string;
  /** Return the index of the card to play, or 'reroll'. */
  choose(hand: DrawnCard[], state: ItemState): number | 'reroll';
}

export interface SimConfig {
  draw: DrawConfig;
  strategy: Strategy;
  echoPool?: string[];
  handSize?: number;
}

/**
 * Fallback ranking used when a strategy wants to reroll but cannot: pick whatever
 * closes the most gap right now, and prefer a card that does nothing over one that
 * throws the item away.
 */
export function bestCardIndex(hand: DrawnCard[], state: ItemState): number {
  let best = 0;
  let bestGain = -Infinity;
  hand.forEach((card, index) => {
    const line = card.lineIndex != null ? state.lines[card.lineIndex] : undefined;
    let gain = 0;
    switch (card.def.effect) {
      case 'gapPercentAll':
        gain = state.lines.reduce((sum, each) => sum + (closeGap(each, card.amount) - each.value), 0);
        break;
      case 'gapPercentOne':
        gain = line ? closeGap(line, card.amount) - line.value : 0;
        break;
      case 'flatStat':
        gain = line ? Math.min(line.max, line.value + card.amount) - line.value : 0;
        break;
      case 'maxOne':
        gain = line ? line.max - line.value : 0;
        break;
      case 'maxAll':
        gain = state.lines.reduce((sum, each) => sum + (each.max - each.value), 0);
        break;
      case 'gamble':
      case 'scrap':
      case 'echoTrade':
        gain = -1;
        break;
      default:
        gain = 0;
    }
    if (gain > bestGain) {
      bestGain = gain;
      best = index;
    }
  });
  return best;
}

export function runCraft(initial: ItemState, config: SimConfig, rng: Rng): ItemState {
  let state = cloneState(initial);
  let guard = 0;

  while (state.turns > 0 && !state.destroyed && !state.scrapped) {
    if (guard++ > 500) break; // extra-turn cards cannot loop forever
    const hand = drawHand(config.draw, state, rng, config.handSize ?? 3);
    const choice = config.strategy.choose(hand, state);

    if (choice === 'reroll' && state.rerolls > 0) {
      state = { ...state, rerolls: state.rerolls - 1 };
      continue;
    }

    // A strategy that asks to reroll with no rerolls left still has to play
    // something, and it should be the best card in hand, not the first one.
    const index = choice === 'reroll' ? bestCardIndex(hand, state) : choice;
    state = applyCard(state, hand[index], rng, config.echoPool);
    state.turns -= 1;
  }

  return state;
}

export interface SimSummary {
  runs: number;
  mean: number;
  median: number;
  p10: number;
  p90: number;
  best: number;
  worst: number;
  perfectRate: number;
  /** Soulbet blew the item up: nothing comes back. */
  destroyRate: number;
  /** the craft was scrapped: half the materials come back, so this is not the same loss. */
  scrapRate: number;
  meanEchoes: number;
  /** mean final value per stat line, in the same order as the input lines */
  lineMeans: number[];
  histogram: { bucket: number; count: number }[];
  sampleLog: string[];
  /** every run's completion score, sorted, so the page can ask its own questions of it */
  scores: number[];
  /** real items from the runs closest to the 10th, 50th and 90th percentile */
  samples: { p10: ItemState | null; median: ItemState | null; p90: ItemState | null };
}

/** Share of runs that reached at least `target` completion. */
export function shareAtLeast(scores: number[], target: number): number {
  if (!scores.length) return 0;
  let count = 0;
  for (const score of scores) if (score >= target - 1e-9) count++;
  return count / scores.length;
}

/**
 * Chance of getting at least one success in `attempts` tries.
 * The formula behind the "how many items must I craft" question: 1 - (1 - p)^n.
 */
export const atLeastOnce = (p: number, attempts: number): number =>
  p <= 0 ? 0 : 1 - Math.pow(1 - p, Math.max(0, attempts));

/** Attempts needed before `confidence` of players have had at least one success. */
export function attemptsFor(p: number, confidence: number): number {
  if (p <= 0 || confidence >= 1) return Infinity;
  if (p >= 1) return 1;
  return Math.max(1, Math.ceil(Math.log(1 - confidence) / Math.log(1 - p)));
}

export function simulate(initial: ItemState, config: SimConfig, runs: number, seed: number): SimSummary {
  const rng = makeRng(seed);
  const scores: number[] = [];
  const survivors: { score: number; state: ItemState }[] = [];
  const lineTotals = new Array(initial.lines.length).fill(0);
  let perfect = 0;
  let destroyed = 0;
  let scrapped = 0;
  let echoTotal = 0;
  let sampleLog: string[] = [];

  for (let i = 0; i < runs; i++) {
    const result = runCraft(initial, config, rng);
    // Destroyed and scrapped both score zero, but they are not the same loss:
    // a scrap gives half the materials back. Count them apart.
    if (result.destroyed) {
      destroyed++;
      scores.push(0);
      if (i === 0) sampleLog = result.log;
      continue;
    }
    if (result.scrapped) {
      scrapped++;
      scores.push(0);
      if (i === 0) sampleLog = result.log;
      continue;
    }
    const score = completion(result);
    scores.push(score);
    survivors.push({ score, state: result });
    if (isPerfect(result)) perfect++;
    echoTotal += result.echoes.length;
    result.lines.forEach((line, index) => {
      lineTotals[index] += line.value;
    });
    if (i === 0) sampleLog = result.log;
  }

  const lost = destroyed + scrapped;
  const survived = runs - lost || 1;
  const sorted = [...scores].sort((a, b) => a - b);
  const at = (q: number) => sorted[Math.min(sorted.length - 1, Math.max(0, Math.floor(q * sorted.length)))] ?? 0;

  // Real items from the unlucky, typical and lucky end of the run, because
  // "0,72 completion" is a number nobody can picture.
  survivors.sort((a, b) => a.score - b.score);
  const pickSample = (q: number) =>
    survivors.length ? survivors[Math.min(survivors.length - 1, Math.floor(q * survivors.length))].state : null;

  const buckets = new Array(20).fill(0);
  for (const score of scores) buckets[Math.min(19, Math.floor(score * 20))]++;

  return {
    runs,
    mean: scores.reduce((sum, value) => sum + value, 0) / (runs || 1),
    median: at(0.5),
    p10: at(0.1),
    p90: at(0.9),
    best: sorted[sorted.length - 1] ?? 0,
    worst: sorted[0] ?? 0,
    perfectRate: perfect / (runs || 1),
    destroyRate: destroyed / (runs || 1),
    scrapRate: scrapped / (runs || 1),
    meanEchoes: echoTotal / survived,
    lineMeans: lineTotals.map((total) => total / survived),
    histogram: buckets.map((count, bucket) => ({ bucket: bucket / 20, count })),
    sampleLog,
    scores: sorted,
    samples: { p10: pickSample(0.1), median: pickSample(0.5), p90: pickSample(0.9) },
  };
}

// ------------------------------------------------------- paired comparison

export interface PairedResult {
  strategy: Strategy;
  summary: SimSummary;
  /** mean of (this strategy - baseline) on the same craft */
  meanDiff: number;
  /** half-width of the 95% confidence interval on that mean */
  ci95: number;
  /** share of crafts where this strategy beat the baseline */
  winRate: number;
  /** true when the interval spans zero, so the ranking is noise */
  tie: boolean;
}

/**
 * Runs every strategy against the SAME seeds (common random numbers) and compares
 * them craft by craft. Pairing removes the shared luck, which in practice cuts the
 * runs needed to resolve a small difference by roughly an order of magnitude.
 */
export function comparePaired(
  initial: ItemState,
  base: Omit<SimConfig, 'strategy'>,
  strategies: Strategy[],
  runs: number,
  seed: number,
): PairedResult[] {
  const perRun: number[][] = strategies.map(() => []);

  for (let i = 0; i < runs; i++) {
    strategies.forEach((strategy, index) => {
      // Same seed for every strategy on run i, so they face the same luck.
      const result = runCraft(initial, { ...base, strategy }, makeRng(seed + i));
      perRun[index].push(result.destroyed || result.scrapped ? 0 : completion(result));
    });
  }

  const summaries = strategies.map((strategy, index) => simulate(initial, { ...base, strategy }, runs, seed));
  const meanOf = (values: number[]) => values.reduce((sum, value) => sum + value, 0) / (values.length || 1);
  const baselineIndex = perRun.map(meanOf).reduce((best, mean, index, all) => (mean > all[best] ? index : best), 0);
  const baseline = perRun[baselineIndex];

  return strategies.map((strategy, index) => {
    const diffs = perRun[index].map((value, run) => value - baseline[run]);
    const mean = meanOf(diffs);
    const variance = diffs.reduce((sum, value) => sum + (value - mean) ** 2, 0) / Math.max(1, diffs.length - 1);
    const ci95 = 1.96 * Math.sqrt(variance / (diffs.length || 1));
    const wins = diffs.filter((value) => value > 1e-9).length;
    return {
      strategy,
      summary: summaries[index],
      meanDiff: mean,
      ci95,
      winRate: wins / (diffs.length || 1),
      tie: index !== baselineIndex && Math.abs(mean) <= ci95,
    };
  });
}
