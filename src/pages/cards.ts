// The card list, with the maths each card actually performs.

import { db } from '../db.ts';
import { closeGap, type CardDef, type Rarity } from '../craft/engine.ts';
import { h, num, section } from '../ui.ts';

const RARITY_ORDER: Rarity[] = ['Common', 'Rare', 'Mythic', 'Legendary'];

const EFFECT_TEXT: Record<string, string> = {
  gapPercentAll: 'Closes a share of the gap on every stat line.',
  gapPercentOne: 'Closes a share of the gap on one line.',
  flatStat: 'Adds a flat value to one line.',
  echoLevel: 'Raises the level of an echo.',
  maxOne: 'Sets one line to its maximum.',
  maxAll: 'Sets every line to its maximum.',
  gamble: 'Either maxes a line or destroys the item.',
  rerollStat: 'Rerolls the value on one line or all of them.',
  addEcho: 'Adds echoes.',
  echoTrade: 'Trades stats for echoes.',
  extraTurns: 'Grants more turns in the minigame.',
  scrap: 'Abandons the craft and refunds materials.',
};

/** What the number in the card's value field actually means, per card type. */
function valueText(card: CardDef, rarity: Rarity): string {
  const amount = card.values[rarity];
  if (typeof amount !== 'number') return card.randomPercentRange ? `unknown (assumed ${card.randomPercentRange[0]} to ${card.randomPercentRange[1]}%)` : 'unknown';
  switch (card.effect) {
    case 'extraTurns':
      return `+${amount} turns`;
    case 'addEcho':
      return `+${amount} echo`;
    case 'flatStat':
      return `+${amount} on the line`;
    case 'echoLevel':
      return `+${amount} echo level`;
    case 'maxOne':
      return 'sets the line to max';
    case 'maxAll':
      return 'sets every line to max';
    case 'rerollStat':
      return 'rerolls the value';
    case 'gamble':
      return `${amount}% to max a line, ${amount}% to destroy the item`;
    case 'scrap':
      return `${amount}% of the materials back`;
    case 'echoTrade':
      return `-${amount}% on every line, +2 echoes`;
    default:
      return `${amount}% of the gap`;
  }
}

/** A worked example: a line sitting at 2.0 out of a maximum 10.0. */
function example(card: CardDef, rarity: Rarity): string | null {
  const amount = card.values[rarity];
  if (card.effect !== 'gapPercentAll' && card.effect !== 'gapPercentOne') return null;
  if (typeof amount !== 'number') return null;
  const line = { name: '', min: 2, max: 10, value: 2, step: 0.1, weight: 1 };
  return `2.0 → ${num(closeGap(line, amount))} (of a max 10.0)`;
}

export async function render(): Promise<Node> {
  const data = await db();
  const assumed = data.cards.filter((card) => card.assumed);

  return h(
    'div',
    null,
    h('h1', null, 'Crafting cards'),
    h(
      'p',
      { class: 'lede' },
      'The 21 cards shared across the professions (Cooking calculates percentages differently). Percentage cards close the gap up to the maximum, so the same card is worth a lot early and almost nothing once a line is nearly maxed.',
    ),
    section(
      'How to read this',
      h(
        'p',
        null,
        'The example column shows what the card does to a line sitting at 2.0 with a maximum of 10.0. That example comes from the wiki itself, worked out with the same round-up the game uses.',
      ),
    ),
    h(
      'div',
      { class: 'grid cards' },
      ...data.cards.map((card) =>
        h(
          'div',
          { class: 'card-tile' },
          h(
            'h3',
            null,
            h('span', null, card.name),
            h('span', null, ...card.rarities.map((rarity) => h('span', { class: `chip ${rarity.toLowerCase()}` }, rarity))),
          ),
          h('p', null, card.description || EFFECT_TEXT[card.effect] || ''),
          h(
            'dl',
            { class: 'kv' },
            ...RARITY_ORDER.filter((rarity) => card.rarities.includes(rarity)).flatMap((rarity) => [
              h('dt', null, rarity),
              h('dd', null, valueText(card, rarity), example(card, rarity) ? h('span', { class: 'muted' }, ` · ${example(card, rarity)}`) : null),
            ]),
          ),
          card.note ? h('p', { class: `note ${card.assumed ? 'assumed' : ''}` }, card.note) : null,
        ),
      ),
    ),
    section(
      'What is assumed',
      h('p', null, 'The simulator needs numbers the game does not publish. These are guesses, not measurements:'),
      h(
        'ul',
        null,
        ...assumed.map((card) => h('li', null, h('b', null, card.name), ': ', card.note ?? '')),
        h('li', null, h('b', null, 'Draw chances'), ': how often each rarity shows up. Adjustable in the simulator.'),
      ),
      h('p', { class: 'muted' }, 'Measured any of this in game? The numbers get better immediately: they all live in one file (tools/cards.mjs).'),
    ),
  );
}
