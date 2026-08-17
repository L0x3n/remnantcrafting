// Kortlistan med den matematik varje kort faktiskt utför.

import { db } from '../db.ts';
import { closeGap, type CardDef, type Rarity } from '../craft/engine.ts';
import { h, num, section } from '../ui.ts';

const RARITY_ORDER: Rarity[] = ['Common', 'Rare', 'Mythic', 'Legendary'];

const EFFECT_TEXT: Record<string, string> = {
  gapPercentAll: 'Stänger en andel av gapet på varje stat-rad.',
  gapPercentOne: 'Stänger en andel av gapet på en rad.',
  flatStat: 'Lägger till ett fast värde på en rad.',
  echoLevel: 'Höjer nivån på en echo.',
  maxOne: 'Sätter en rad till sitt maxvärde.',
  maxAll: 'Sätter varje rad till sitt maxvärde.',
  gamble: 'Antingen maxar en rad eller förstör föremålet.',
  rerollStat: 'Slår om värdet på en eller alla rader.',
  addEcho: 'Lägger till echoes.',
  echoTrade: 'Byter stats mot echoes.',
  extraTurns: 'Ger fler turer i minispelet.',
  scrap: 'Avbryter craften och ger tillbaka material.',
};

/** Vad siffran i kortets värdefält faktiskt betyder, per korttyp. */
function valueText(card: CardDef, rarity: Rarity): string {
  const amount = card.values[rarity];
  if (typeof amount !== 'number') return card.randomPercentRange ? `okänt (antas ${card.randomPercentRange[0]} till ${card.randomPercentRange[1]}%)` : 'okänt';
  switch (card.effect) {
    case 'extraTurns':
      return `+${amount} turer`;
    case 'addEcho':
      return `+${amount} echo`;
    case 'flatStat':
      return `+${amount} på raden`;
    case 'echoLevel':
      return `+${amount} echo-nivå`;
    case 'maxOne':
      return 'sätter raden till max';
    case 'maxAll':
      return 'sätter varje rad till max';
    case 'rerollStat':
      return 'slår om värdet';
    case 'gamble':
      return `${amount}% att maxa en rad, ${amount}% att förstöra föremålet`;
    case 'scrap':
      return `${amount}% av materialet tillbaka`;
    case 'echoTrade':
      return `-${amount}% på varje rad, +2 echoes`;
    default:
      return `${amount}% av gapet`;
  }
}

/** Konkret exempel: en rad som står på 2,0 av max 10,0. */
function example(card: CardDef, rarity: Rarity): string | null {
  const amount = card.values[rarity];
  if (card.effect !== 'gapPercentAll' && card.effect !== 'gapPercentOne') return null;
  if (typeof amount !== 'number') return null;
  const line = { name: '', min: 2, max: 10, value: 2, step: 0.1, weight: 1 };
  return `2,0 → ${num(closeGap(line, amount))} (av max 10,0)`;
}

export async function render(): Promise<Node> {
  const data = await db();
  const assumed = data.cards.filter((card) => card.assumed);

  return h(
    'div',
    null,
    h('h1', null, 'Crafting-kort'),
    h(
      'p',
      { class: 'lede' },
      'De 21 korten som delas mellan professionerna (Cooking räknar procent på ett annat sätt). Procentkorten stänger gapet upp till maxvärdet, så samma kort är värt mycket i början och nästan ingenting när raden nästan är maxad.',
    ),
    section(
      'Läs så här',
      h(
        'p',
        null,
        'Exempelkolumnen visar vad kortet gör med en rad som står på 2,0 och har max 10,0. Det är wikins eget exempel, uträknat med samma avrundning uppåt som spelet använder.',
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
      'Vad som är antaganden',
      h('p', null, 'Simulatorn behöver siffror som spelet inte publicerar. De här är gissningar, inte uppmätt data:'),
      h(
        'ul',
        null,
        ...assumed.map((card) => h('li', null, h('b', null, card.name), ': ', card.note ?? '')),
        h('li', null, h('b', null, 'Dragchanser'), ': hur ofta varje sällsynthet dyker upp. Justerbart i simulatorn.'),
      ),
      h('p', { class: 'muted' }, 'Har du mätt något av det här i spelet? Då blir siffrorna direkt bättre, de sitter i en enda fil (tools/cards.mjs).'),
    ),
  );
}
