// A single item page: stats, recipes, what it is used in, what drops it.

import { db, iconUrl, type Database, type Entity } from '../db.ts';
import { parseStatLines } from '../craft/statlines.ts';
import { h, num, section, table } from '../ui.ts';

const sourceLabel: Record<string, string> = {
  mining: 'Mining',
  fishing: 'Fishing',
  herbalism: 'Herbalism',
  gathering: 'Gathering',
  drop: 'Drop',
  shop: 'Vendor',
};

function nameLink(data: Database, name: string) {
  const entity = data.byName.get(name);
  return entity ? h('a', { href: `#/i/${entity.slug}` }, name) : h('span', null, name);
}

function statPanel(entity: Entity): HTMLElement | null {
  if (!entity.statLines.length) return null;
  const parsed = parseStatLines(entity.statLines);
  return section(
    'Stat lines',
    parsed.length
      ? table(
          ['Line', 'Min', 'Max', 'Range to craft in'],
          parsed.map((line) => [
            line.percent ? `${line.name} (%)` : line.name,
            h('span', { class: 'num mono' }, num(line.min)),
            h('span', { class: 'num mono' }, num(line.max)),
            line.max > line.min ? h('span', { class: 'chip ember' }, `${num(line.max - line.min)} to chase`) : h('span', { class: 'chip' }, 'fixed value'),
          ]),
        )
      : h('ul', null, ...entity.statLines.map((line) => h('li', null, line))),
    parsed.some((line) => line.max > line.min)
      ? h('p', { class: 'muted' }, h('a', { href: `#/simulator?item=${encodeURIComponent(entity.name)}` }, 'Simulate crafting this item'))
      : null,
  );
}

export async function render(params: Record<string, string>): Promise<Node> {
  const data = await db();
  const entity = data.bySlug.get(params.slug);
  if (!entity) return h('div', { class: 'panel' }, h('h1', null, 'Unknown item'), h('p', null, h('a', { href: '#/db' }, 'Back to the database')));

  const recipes = data.recipesByOutput.get(entity.name) ?? [];
  const usedIn = data.recipesByInput.get(entity.name) ?? [];
  const sources = data.sources[entity.name] ?? [];
  const icon = iconUrl(entity.image);

  const meta: [string, string][] = [
    ['Category', entity.kind],
    ['Type', entity.weaponType || entity.armorType || entity.accessoryType || entity.equipmentType || entity.inventoryTab || ''],
    ['Tier', entity.tier ?? ''],
    ['Level', entity.level ? String(entity.level) : ''],
    ['Upgrade slots', entity.slots != null ? String(entity.slots) : ''],
    ['Tradable', entity.tradable ?? ''],
    ['Craftable', entity.craftable ?? ''],
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
        recipes.length ? h('a', { class: 'chip ember', href: `#/planner?add=${encodeURIComponent(entity.name)}` }, 'Add to the planner') : null,
      ),
    ),
    statPanel(entity),
    recipes.length
      ? section(
          recipes.length > 1 ? `Recipes (${recipes.length} variants)` : 'Recipe',
          ...recipes.map((recipe) =>
            h(
              'div',
              { class: 'card-tile', style: { marginBottom: '10px' } },
              h(
                'h3',
                null,
                h('span', null, `${recipe.profession} lv ${recipe.level ?? '?'}`),
                h('span', { class: 'chip' }, `yields ${recipe.outputQty}×`),
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
          'Where it comes from',
          table(
            ['How', 'Where', 'Chance'],
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
          `Used in ${usedIn.length} recipes`,
          h(
            'div',
            { class: 'scroll' },
            table(
              ['Output', 'Profession', 'Lv', 'Amount'],
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
      ? section('Echoes', table(['Echo', 'Count', 'Chance'], entity.echoes.map((echo) => [echo.name, echo.quantity, echo.chance])))
      : null,
    h(
      'footer',
      { class: 'site' },
      'Data taken from ',
      h('a', { href: `https://soulsremnant.wiki.gg/wiki/${encodeURIComponent(entity.name)}`, target: '_blank', rel: 'noreferrer' }, `soulsremnant.wiki.gg/wiki/${entity.name}`),
      ' (CC BY-SA 4.0).',
    ),
  );
}
