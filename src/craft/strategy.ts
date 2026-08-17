// Card-choice policies for the simulator.
// Each policy scores every card in the hand and plays the best one, so the
// numbers the tool reports are "what this plan is worth", not "what one lucky run did".

import { closeGap, completion, type DrawnCard, type ItemState, type Strategy } from './engine.ts';

export interface GreedyOptions {
  /** worth of one echo, expressed in the same 0..1 units as completion */
  echoWeight: number;
  /** how much of the remaining potential one extra turn is expected to claim */
  turnValue: number;
  /** reroll when the best card in hand scores below this */
  rerollThreshold: number;
  /** never play Soulbet / Scrap / Echo Trade */
  avoidRisk: boolean;
}

const DEFAULTS: GreedyOptions = {
  echoWeight: 0.04,
  turnValue: 0.1,
  rerollThreshold: 0.02,
  avoidRisk: false,
};

const totalWeight = (state: ItemState) => state.lines.reduce((sum, line) => sum + line.weight, 0) || 1;

/** Normalized completion gain from moving one line to a new value. */
function lineGain(state: ItemState, index: number, newValue: number): number {
  const line = state.lines[index];
  const span = line.max - line.min;
  if (span <= 0) return 0;
  return ((newValue - line.value) / span) * (line.weight / totalWeight(state));
}

const remainingPotential = (state: ItemState) => 1 - completion(state);

/** Heuristic value of playing this card right now, in completion units. */
export function scoreCard(card: DrawnCard, state: ItemState, options: GreedyOptions): number {
  const { def, amount } = card;
  const index = card.lineIndex ?? 0;
  const line = state.lines[index];
  const perTurn = remainingPotential(state) * options.turnValue;

  switch (def.effect) {
    case 'gapPercentAll':
      return state.lines.reduce((sum, each, i) => sum + lineGain(state, i, closeGap(each, amount)), 0);
    case 'gapPercentOne': {
      if (!line) return 0;
      if (def.consumesEcho && state.echoes.length < def.consumesEcho) return -0.001;
      const gain = lineGain(state, index, closeGap(line, amount));
      return gain - (def.consumesEcho ?? 0) * options.echoWeight;
    }
    case 'flatStat':
      return line ? lineGain(state, index, Math.min(line.max, line.value + amount)) : 0;
    case 'maxOne':
      return line ? lineGain(state, index, line.max) : 0;
    case 'maxAll':
      return state.lines.reduce((sum, each, i) => sum + lineGain(state, i, each.max), 0);
    case 'echoLevel':
      return state.echoes.length ? options.echoWeight * 0.5 : -0.001;
    case 'addEcho': {
      const room = Math.max(0, state.echoSlots - state.echoes.length);
      return Math.min(room, amount || 1) * options.echoWeight;
    }
    case 'extraTurns':
      return amount * perTurn;
    case 'rerollStat': {
      // A reroll lands, on average, at the middle of the line's range.
      const targets = def.target === 'all' ? state.lines.map((_, i) => i) : line ? [index] : [];
      return targets.reduce((sum, i) => {
        const each = state.lines[i];
        return sum + lineGain(state, i, (each.min + each.max) / 2);
      }, 0);
    }
    case 'gamble': {
      if (options.avoidRisk) return -1;
      const upside = line ? lineGain(state, index, line.max) : 0;
      const downside = completion(state) + state.echoes.length * options.echoWeight;
      return 0.5 * upside - 0.5 * downside;
    }
    case 'echoTrade': {
      if (options.avoidRisk) return -1;
      const loss = state.lines.reduce((sum, each, i) => {
        const drop = (each.value - each.min) * (amount / 100);
        return sum + lineGain(state, i, each.value - drop);
      }, 0);
      const room = Math.max(0, state.echoSlots - state.echoes.length);
      return loss + Math.min(room, 2) * options.echoWeight;
    }
    case 'scrap':
      return -1;
    default:
      return 0;
  }
}

export function makeGreedyStrategy(id: string, name: string, description: string, overrides: Partial<GreedyOptions> = {}): Strategy {
  const options = { ...DEFAULTS, ...overrides };
  return {
    id,
    name,
    description,
    choose(hand: DrawnCard[], state: ItemState) {
      let bestIndex = 0;
      let bestScore = -Infinity;
      hand.forEach((card, index) => {
        const score = scoreCard(card, state, options);
        if (score > bestScore) {
          bestScore = score;
          bestIndex = index;
        }
      });
      if (state.rerolls > 0 && bestScore < options.rerollThreshold) return 'reroll';
      return bestIndex;
    },
  };
}

export const RANDOM_STRATEGY: Strategy = {
  id: 'random',
  name: 'Slumpmässigt val',
  description: 'Tar ett slumpmässigt kort varje tur. Finns med som nollreferens att jämföra mot.',
  choose(hand) {
    return Math.floor(Math.random() * hand.length);
  },
};

export const STRATEGIES: Strategy[] = [
  makeGreedyStrategy('max-stats', 'Maxa stats', 'Väljer alltid kortet som stänger mest gap. Ignorerar echoes helt.', {
    echoWeight: 0,
  }),
  makeGreedyStrategy('balanced', 'Stats + echoes', 'Värderar en echo ungefär lika mycket som 4% av en full stat-rad.', {
    echoWeight: 0.04,
  }),
  makeGreedyStrategy('echo-hunter', 'Echo-jägare', 'Prioriterar att fylla echo-slots före stats.', {
    echoWeight: 0.18,
  }),
  makeGreedyStrategy('turn-greedy', 'Samla turer', 'Tar extra-tur-kort så fort de dyker upp och sparar rerolls till bra lägen.', {
    turnValue: 0.22,
    rerollThreshold: 0.05,
  }),
  makeGreedyStrategy('safe', 'Riskfritt', 'Rör aldrig Soulbet, Scrap eller Echo Trade.', {
    avoidRisk: true,
  }),
  RANDOM_STRATEGY,
];
