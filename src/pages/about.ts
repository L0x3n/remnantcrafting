import { db } from '../db.ts';
import { h, section, table } from '../ui.ts';

export async function render(): Promise<Node> {
  const data = await db();
  const counts = data.meta.counts;

  const missingStats = data.entities.filter((entity) => entity.kind === 'equipment' && entity.statLines.length === 0).length;
  const uncraftable = data.entities.filter((entity) => entity.kind === 'equipment' && !data.recipesByOutput.has(entity.name)).length;
  const noSources = data.entities.filter((entity) => entity.kind === 'material' && !(data.sources[entity.name] ?? []).length).length;

  return h(
    'div',
    null,
    h('h1', null, 'Sources and data status'),
    section(
      'Where the data comes from',
      h(
        'p',
        null,
        'All game data is imported from ',
        h('a', { href: 'https://soulsremnant.wiki.gg/', target: '_blank', rel: 'noreferrer' }, 'soulsremnant.wiki.gg'),
        ', specifically its Lua data modules (Module:Data/Equipment, Items, Consumables, Monsters, Locations, Skills) and the card table in Template:ArmorCards.',
      ),
      h(
        'p',
        null,
        'That content is licensed under ',
        h('a', { href: 'https://creativecommons.org/licenses/by-sa/4.0', target: '_blank', rel: 'noreferrer' }, 'CC BY-SA 4.0'),
        '. This site uses it under the same licence, with that attribution. It is not affiliated with the game developers or with wiki.gg.',
      ),
      h('p', null, 'The import runs from two commands (npm run fetch, then npm run data), so a wiki update can be pulled in whenever it lands.'),
    ),
    section(
      'What was imported',
      table(
        ['Kind', 'Count'],
        Object.entries(counts).map(([key, value]) => [key, h('span', { class: 'num mono' }, String(value))]),
      ),
    ),
    section(
      'Known gaps in the source data',
      h(
        'ul',
        null,
        h('li', null, `${missingStats} equipment pages carry no stat lines at all.`),
        h('li', null, `${uncraftable} equipment pages have no documented recipe.`),
        h('li', null, `${noSources} materials have no documented source, so nothing says where to farm them.`),
        h('li', null, `${counts.placeholders} names only ever appear as an ingredient in someone else's recipe and have no page of their own yet.`),
        h('li', null, 'The wiki marks its Gathering page as a work in progress, so node levels and exp are missing.'),
        h(
          'li',
          null,
          'Cooking inverts the gap mechanic: cooking items start at their maximum value and cards calculate off the current value. The simulator only models the normal direction, so it does not cover Cooking.',
        ),
        ...(data.meta.dataIssues?.selfReferential ?? []).map((row) =>
          h('li', null, h('b', null, row.output), ` lists itself as an ingredient (${row.qty} of them). A plain typo in the source; the planner stops there instead of looping.`),
        ),
        ...(data.meta.dataIssues?.mergedNames ?? []).map((row) => h('li', null, row.replace(' slogs ihop med ', ' merged into '), ' (one material, two spellings in the source).')),
      ),
      h('p', { class: 'muted' }, 'These gaps come from the source, not from the import. They are listed here so nothing looks more complete than it is.'),
    ),
    section(
      'What the simulator assumes',
      h(
        'ul',
        null,
        h('li', null, 'The draw chance per rarity is a guess, and it is editable in the simulator.'),
        h('li', null, 'Mystery Strike is modelled as a uniform roll inside a range.'),
        h('li', null, 'Reroll cards are assumed to land uniformly between a line minimum and maximum.'),
        h('li', null, 'Echo Trade is assumed to pull each line 35% back toward its minimum, mirroring how gains close the gap upward.'),
        h('li', null, 'Echoes are valued by a weight you set yourself, because their effect varies per item.'),
      ),
      h('p', null, 'The ', h('a', { href: '#/cards' }, 'card list'), ' flags every assumption on the card it belongs to.'),
    ),
  );
}
