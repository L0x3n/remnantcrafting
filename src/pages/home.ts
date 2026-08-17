import { db } from '../db.ts';
import { h, section } from '../ui.ts';

const TILES = [
  {
    href: '#/planner',
    title: 'Material planner',
    body: 'Pick what you want to craft. It breaks the whole thing down to raw materials, in the order you have to craft them, with the profession levels required and where each material is farmed.',
  },
  {
    href: '#/simulator',
    title: 'Craft simulator',
    body: 'Runs the crafting minigame a few thousand times on your item. See the spread, compare playstyles, and work out what extra turns and rerolls are actually worth.',
  },
  {
    href: '#/cards',
    title: 'Card list',
    body: 'All 21 cards with the maths they perform, plus a worked example per rarity. Assumptions are labelled as assumptions.',
  },
  {
    href: '#/recipes',
    title: 'Recipes',
    body: 'Every documented recipe, filterable by profession, craft level and ingredient.',
  },
];

export async function render(): Promise<Node> {
  const data = await db();
  const counts = data.meta.counts;

  return h(
    'div',
    null,
    h(
      'div',
      { class: 'panel' },
      h('h1', null, 'remnantcrafting'),
      h(
        'p',
        { class: 'lede' },
        "A Soul's Remnant database built around the one thing the current wiki does not do: arithmetic. The recipes and the stat ranges are already written down, but nothing breaks them down for you and nothing tells you what a card choice is worth.",
      ),
      h('p', { class: 'wip-notice' }, 'This Wiki is a continual work-in-progress, and is maintained by the community.'),
      h(
        'div',
        { class: 'row', style: { marginTop: '12px' } },
        h('span', { class: 'chip ember' }, `${counts.recipes} recipes`),
        h('span', { class: 'chip' }, `${counts.entities} items`),
        h('span', { class: 'chip' }, `${counts.monsters} monsters`),
        h('span', { class: 'chip' }, `${counts.locations} maps`),
        h('span', { class: 'chip' }, `${counts.skills} skills`),
        h('span', { class: 'chip' }, `${counts.cards} cards`),
      ),
    ),
    h(
      'div',
      { class: 'grid two' },
      ...TILES.map((tile) =>
        h(
          'a',
          { href: tile.href, class: 'panel', style: { display: 'block', color: 'inherit', textDecoration: 'none' } },
          h('h2', null, tile.title),
          h('p', { class: 'muted', style: { margin: '0' } }, tile.body),
        ),
      ),
    ),
    section(
      'How crafting works, briefly',
      h(
        'p',
        null,
        'You get three random cards per turn and pick one, until the turns run out. Percentage cards close a share of the gap up to the line maximum, not a share of the value you already have. A line sitting at 2.0 out of a max 10.0 jumps to 6.0 on a +50% card, while the same line at 9.0 only reaches 9.8 on a +75% card.',
      ),
      h(
        'p',
        null,
        'Values round up, so a perfect item is reachable, but only with enough turns. More turns and rerolls come from profession level, echoes on gear, and food from Cooking.',
      ),
      h('p', null, h('a', { href: '#/simulator' }, 'Run the numbers in the simulator'), ' or ', h('a', { href: '#/cards' }, 'read the card list'), '.'),
    ),
    h(
      'footer',
      { class: 'site' },
      'made by RapidX. Game data comes from soulsremnant.wiki.gg and is used under CC BY-SA 4.0. ',
      h('a', { href: '#/about' }, 'Sources and data status'),
      '.',
    ),
  );
}
