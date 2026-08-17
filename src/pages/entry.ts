// Enskild föremålssida: stats, recept, var det används, var det droppar.

import { db, iconUrl, type Database, type Entity } from '../db.ts';
import { parseStatLines } from '../craft/statlines.ts';
import { h, num, section, table } from '../ui.ts';

const sourceLabel: Record<string, string> = {
  mining: 'Mining',
  fishing: 'Fiske',
  herbalism: 'Herbalism',
  gathering: 'Gathering',
  drop: 'Drop',
  shop: 'Butik',
};

function nameLink(data: Database, name: string) {
  const entity = data.byName.get(name);
  return entity ? h('a', { href: `#/i/${entity.slug}` }, name) : h('span', null, name);
}

function statPanel(entity: Entity): HTMLElement | null {
  if (!entity.statLines.length) return null;
  const parsed = parseStatLines(entity.statLines);
  return section(
    'Stat-rader',
    parsed.length
      ? table(
          ['Rad', 'Min', 'Max', 'Spann att crafta i'],
          parsed.map((line) => [
            line.percent ? `${line.name} (%)` : line.name,
            h('span', { class: 'num mono' }, num(line.min)),
            h('span', { class: 'num mono' }, num(line.max)),
            line.max > line.min ? h('span', { class: 'chip ember' }, `${num(line.max - line.min)} att jaga`) : h('span', { class: 'chip' }, 'fast värde'),
          ]),
        )
      : h('ul', null, ...entity.statLines.map((line) => h('li', null, line))),
    parsed.some((line) => line.max > line.min)
      ? h('p', { class: 'muted' }, h('a', { href: `#/simulator?item=${encodeURIComponent(entity.name)}` }, 'Simulera craften av det här föremålet'))
      : null,
  );
}

export async function render(params: Record<string, string>): Promise<Node> {
  const data = await db();
  const entity = data.bySlug.get(params.slug);
  if (!entity) return h('div', { class: 'panel' }, h('h1', null, 'Okänt föremål'), h('p', null, h('a', { href: '#/db' }, 'Till databasen')));

  const recipes = data.recipesByOutput.get(entity.name) ?? [];
  const usedIn = data.recipesByInput.get(entity.name) ?? [];
  const sources = data.sources[entity.name] ?? [];
  const icon = iconUrl(entity.image);

  const meta: [string, string][] = [
    ['Kategori', entity.kind],
    ['Typ', entity.weaponType || entity.armorType || entity.accessoryType || entity.equipmentType || entity.inventoryTab || ''],
    ['Tier', entity.tier ?? ''],
    ['Nivå', entity.level ? String(entity.level) : ''],
    ['Upgrade slots', entity.slots != null ? String(entity.slots) : ''],
    ['Tradable', entity.tradable ?? ''],
    ['Craftbar', entity.craftable ?? ''],
  ];

  return h(
    'div',
    null,
    h(
      'div',
      { class: 'panel hero' },
      icon
        ? h('img', { class: 'icon lg', src: icon, alt: '', onerror: (event: Event) => (event.target as HTMLElement).remove() })
        : null,
      h(
        'div',
        { style: { flex: '1', minWidth: '260px' } },
        h('h1', { style: { marginBottom: '4px' } }, entity.name),
        entity.caption ? h('p', { class: 'muted', style: { fontStyle: 'italic' } }, entity.caption) : null,
        h(
          'dl',
          { class: 'kv' },
          ...meta.filter(([, value]) => value).flatMap(([key, value]) => [h('dt', null, key), h('dd', null, value)]),
        ),
      ),
      h(
        'div',
        { class: 'row' },
        recipes.length ? h('a', { class: 'chip ember', href: `#/planner?add=${encodeURIComponent(entity.name)}` }, 'Lägg i planeraren') : null,
      ),
    ),
    statPanel(entity),
    recipes.length
      ? section(
          recipes.length > 1 ? `Recept (${recipes.length} varianter)` : 'Recept',
          ...recipes.map((recipe) =>
            h(
              'div',
              { class: 'card-tile', style: { marginBottom: '10px' } },
              h(
                'h3',
                null,
                h('span', null, `${recipe.profession} lv ${recipe.level ?? '?'}`),
                h('span', { class: 'chip' }, `ger ${recipe.outputQty}×`),
              ),
              h(
                'ul',
                null,
                ...recipe.inputs.map((input) => h('li', null, h('span', { class: 'mono' }, `${input.qty}× `), nameLink(data, input.name))),
              ),
            ),
          ),
        )
      : null,
    sources.length
      ? section(
          'Var det kommer ifrån',
          table(
            ['Sätt', 'Plats', 'Chans'],
            sources.map((source) => [
              sourceLabel[source.via] ?? source.via,
              source.via === 'drop' ? nameLink(data, source.where) : source.where,
              source.chance || source.price || '',
            ]),
          ),
        )
      : null,
    usedIn.length
      ? section(
          `Används i ${usedIn.length} recept`,
          h(
            'div',
            { class: 'scroll' },
            table(
              ['Resultat', 'Profession', 'Lv', 'Åtgång'],
              usedIn.map((recipe) => [
                nameLink(data, recipe.output),
                recipe.profession,
                h('span', { class: 'num mono' }, String(recipe.level ?? '?')),
                h('span', { class: 'num mono' }, String(recipe.inputs.find((input) => input.name === entity.name)?.qty ?? '')),
              ]),
            ),
          ),
        )
      : null,
    entity.echoes.length
      ? section('Echoes', table(['Echo', 'Antal', 'Chans'], entity.echoes.map((echo) => [echo.name, echo.quantity, echo.chance])))
      : null,
    h(
      'footer',
      { class: 'site' },
      'Data hämtad från ',
      h('a', { href: `https://soulsremnant.wiki.gg/wiki/${encodeURIComponent(entity.name)}`, target: '_blank', rel: 'noreferrer' }, `soulsremnant.wiki.gg/wiki/${entity.name}`),
      ' (CC BY-SA 4.0).',
    ),
  );
}
