import { db, iconUrl, type Database } from '../db.ts';
import { h, section, table } from '../ui.ts';

function detail(data: Database, slug: string): Node {
  const monster = data.monsterBySlug.get(slug);
  if (!monster) return h('div', { class: 'panel' }, h('h1', null, 'Unknown monster'));
  const icon = iconUrl(monster.image);
  const stats: [string, string][] = [
    ['Level', monster.level ? String(monster.level) : ''],
    ['HP', monster.hp],
    ['Attack', monster.atk],
    ['Defense', monster.def],
    ['EXP', monster.exp],
    ['Speed', String(monster.spd ?? '')],
    ['Element', monster.element.join(', ')],
  ];

  return h(
    'div',
    null,
    h(
      'div',
      { class: 'panel hero' },
      icon ? h('img', { class: 'icon lg', src: icon, alt: '', onerror: (event: Event) => (event.target as HTMLElement).remove() }) : null,
      h(
        'div',
        null,
        h('h1', null, monster.name),
        h('dl', { class: 'kv' }, ...stats.filter(([, value]) => value).flatMap(([key, value]) => [h('dt', null, key), h('dd', null, value)])),
      ),
    ),
    monster.maps.length ? section('Found on', h('div', { class: 'row' }, ...monster.maps.map((map) => {
      const location = data.locations.find((each) => each.name === map);
      return location ? h('a', { class: 'chip', href: `#/maps/${location.slug}` }, map) : h('span', { class: 'chip' }, map);
    }))) : null,
    monster.drops.length
      ? section(
          'Drops',
          table(
            ['Item', 'Chance'],
            monster.drops.map((drop) => {
              const entity = data.byName.get(drop.name);
              return [entity ? h('a', { href: `#/i/${entity.slug}` }, drop.name) : drop.name, drop.chance];
            }),
          ),
        )
      : h('p', { class: 'empty' }, 'No drops documented.'),
  );
}

export async function render(params: Record<string, string>): Promise<Node> {
  const data = await db();
  if (params.slug) return detail(data, params.slug);

  const rows = [...data.monsters].sort((a, b) => (a.level ?? 0) - (b.level ?? 0) || a.name.localeCompare(b.name));
  return h(
    'div',
    null,
    h('h1', null, 'Monsters'),
    h('p', { class: 'lede' }, `${rows.length} monsters with stats and drops.`),
    h(
      'div',
      { class: 'scroll' },
      table(
        ['', 'Name', 'Lv', 'HP', 'Atk', 'Def', 'EXP', 'Drops'],
        rows.map((monster) => {
          const icon = iconUrl(monster.image);
          return [
            icon ? h('img', { class: 'icon', src: icon, alt: '', loading: 'lazy', onerror: (event: Event) => (event.target as HTMLElement).remove() }) : '',
            h('a', { href: `#/monsters/${monster.slug}` }, monster.name),
            h('span', { class: 'num mono' }, monster.level ? String(monster.level) : ''),
            h('span', { class: 'num mono' }, monster.hp),
            h('span', { class: 'num mono' }, monster.atk),
            h('span', { class: 'num mono' }, monster.def),
            h('span', { class: 'num mono' }, monster.exp),
            h('span', { class: 'num mono' }, String(monster.drops.length)),
          ];
        }),
      ),
    ),
  );
}
