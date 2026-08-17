import { db, type Database } from '../db.ts';
import { h, section, table } from '../ui.ts';

const gatherTable = (data: Database, title: string, rows: { name: string; chance: string }[]) =>
  rows.length
    ? section(
        title,
        table(
          ['Material', 'Chans'],
          rows.map((row) => {
            const entity = data.byName.get(row.name);
            return [entity ? h('a', { href: `#/i/${entity.slug}` }, row.name) : row.name, row.chance];
          }),
        ),
      )
    : null;

function detail(data: Database, slug: string): Node {
  const location = data.locationBySlug.get(slug);
  if (!location) return h('div', { class: 'panel' }, h('h1', null, 'Okänd karta'));

  return h(
    'div',
    null,
    h(
      'div',
      { class: 'panel' },
      h('h1', null, location.name),
      location.caption ? h('p', { class: 'muted' }, location.caption) : null,
      h(
        'div',
        { class: 'row' },
        location.level ? h('span', { class: 'chip ember' }, `Nivå ${location.level}`) : null,
        ...location.portals.map((portal) => {
          const target = data.locations.find((each) => each.name === portal);
          return target ? h('a', { class: 'chip', href: `#/maps/${target.slug}` }, `→ ${portal}`) : h('span', { class: 'chip' }, `→ ${portal}`);
        }),
      ),
    ),
    location.monsters.length
      ? section(
          'Monster',
          table(
            ['Monster', 'Essence'],
            location.monsters.map((row) => {
              const monster = data.monsters.find((each) => each.name === row.name);
              return [monster ? h('a', { href: `#/monsters/${monster.slug}` }, row.name) : row.name, row.essence];
            }),
          ),
        )
      : null,
    h(
      'div',
      { class: 'grid three' },
      gatherTable(data, 'Mining', location.mining),
      gatherTable(data, 'Herbalism', location.herbalism),
      gatherTable(data, 'Fiske', location.fishing),
    ),
    location.interactables.length
      ? section('NPC och objekt', h('div', { class: 'row' }, ...location.interactables.map((row) => h('span', { class: 'chip' }, `${row.name}${row.type ? ` (${row.type})` : ''}`))))
      : null,
  );
}

export async function render(params: Record<string, string>): Promise<Node> {
  const data = await db();
  if (params.slug) return detail(data, params.slug);

  const rows = [...data.locations].sort((a, b) => (a.level ?? 0) - (b.level ?? 0) || a.name.localeCompare(b.name));
  return h(
    'div',
    null,
    h('h1', null, 'Kartor'),
    h('p', { class: 'lede' }, 'Varje karta med sina monster och sina noder. Nyttigt när planeraren säger att du behöver 240 Quartz.'),
    h(
      'div',
      { class: 'scroll' },
      table(
        ['Karta', 'Lv', 'Monster', 'Mining', 'Herbalism', 'Fiske'],
        rows.map((location) => [
          h('a', { href: `#/maps/${location.slug}` }, location.name),
          h('span', { class: 'num mono' }, location.level ? String(location.level) : ''),
          h('span', { class: 'muted' }, location.monsters.map((row) => row.name).join(', ')),
          h('span', { class: 'muted' }, location.mining.map((row) => row.name).join(', ')),
          h('span', { class: 'muted' }, location.herbalism.map((row) => row.name).join(', ')),
          h('span', { class: 'muted' }, location.fishing.map((row) => row.name).join(', ')),
        ]),
      ),
    ),
  );
}
