// The item database, with filters.

import { db, iconUrl, type Database, type Entity } from '../db.ts';
import { h, mount, section, table } from '../ui.ts';

interface Filters {
  text: string;
  kind: string;
  type: string;
  tier: string;
  craftable: string;
  minLevel: number;
  maxLevel: number;
}

const typeOf = (entity: Entity) =>
  entity.weaponType || entity.armorType || entity.accessoryType || entity.equipmentType || entity.inventoryTab || entity.kind;

function matches(entity: Entity, filters: Filters, craftable: Set<string>): boolean {
  if (filters.text && !entity.name.toLowerCase().includes(filters.text.toLowerCase())) return false;
  if (filters.kind && entity.kind !== filters.kind) return false;
  if (filters.type && typeOf(entity) !== filters.type) return false;
  if (filters.tier && (entity.tier ?? '') !== filters.tier) return false;
  if (filters.craftable === 'yes' && !craftable.has(entity.name)) return false;
  if (filters.craftable === 'no' && craftable.has(entity.name)) return false;
  const level = entity.level ?? 0;
  if (level < filters.minLevel || level > filters.maxLevel) return false;
  return true;
}

export async function render(_params: Record<string, string>, query: URLSearchParams): Promise<Node> {
  const data: Database = await db();
  const craftable = new Set(data.recipes.map((recipe) => recipe.output));

  const filters: Filters = {
    text: query.get('q') ?? '',
    kind: query.get('kind') ?? '',
    type: query.get('type') ?? '',
    tier: '',
    craftable: '',
    minLevel: 0,
    maxLevel: 999,
  };

  const root = h('div', null);
  const listBox = h('div', null);

  const types = [...new Set(data.entities.map(typeOf))].filter(Boolean).sort();
  const tiers = [...new Set(data.entities.map((entity) => entity.tier ?? ''))].filter(Boolean).sort();

  const renderList = () => {
    // Names that only appear as an ingredient sort last: they have no wiki page yet.
    const rank = (entity: Entity) => (entity.kind === 'unknown' ? 1 : 0);
    const rows = data.entities
      .filter((entity) => matches(entity, filters, craftable))
      .sort((a, b) => rank(a) - rank(b) || (a.level ?? 0) - (b.level ?? 0) || a.name.localeCompare(b.name));

    mount(
      listBox,
      h('p', { class: 'muted' }, `${rows.length} of ${data.entities.length} items`),
      h(
        'div',
        { class: 'scroll' },
        table(
          ['', 'Name', 'Type', 'Tier', 'Lv', 'Slots', 'Stats', 'Craft'],
          rows.slice(0, 400).map((entity) => {
            const icon = iconUrl(entity.image);
            return [
              icon
                ? h('img', { class: 'icon', src: icon, alt: '', loading: 'lazy', onerror: (event: Event) => (event.target as HTMLElement).replaceWith(h('span', { class: 'icon-fallback' }, '?')) })
                : h('span', { class: 'icon-fallback' }, '?'),
              h('a', { href: `#/i/${entity.slug}` }, entity.name),
              entity.kind === 'unknown' ? h('span', { class: 'muted' }, 'ingredient only') : typeOf(entity),
              entity.tier ?? '',
              h('span', { class: 'num mono' }, entity.level ? String(entity.level) : ''),
              h('span', { class: 'num mono' }, entity.slots ? String(entity.slots) : ''),
              h('span', { class: 'muted', style: { fontSize: '0.84rem' } }, entity.statLines.join(', ')),
              craftable.has(entity.name) ? h('span', { class: 'chip good' }, 'yes') : '',
            ];
          }),
        ),
      ),
      rows.length > 400 ? h('p', { class: 'muted' }, 'Showing the first 400. Filter further to see the rest.') : null,
    );
  };

  const control = (label: string, node: Node) => h('div', { class: 'field' }, h('span', { class: 'field-label' }, label), node);
  const picker = (values: string[], current: string, onChange: (value: string) => void, allLabel: string) =>
    h(
      'select',
      { onchange: (event: Event) => { onChange((event.target as HTMLSelectElement).value); renderList(); } },
      h('option', { value: '' }, allLabel),
      ...values.map((value) => h('option', { value, selected: value === current }, value)),
    );

  const textInput = h('input', {
    type: 'search',
    placeholder: 'Filter by name',
    value: filters.text,
    oninput: (event: Event) => {
      filters.text = (event.target as HTMLInputElement).value;
      renderList();
    },
  });

  root.replaceChildren(
    h('h1', null, 'Items'),
    section(
      'Filters',
      h(
        'div',
        { class: 'row' },
        control('Name', textInput),
        control('Category', picker(['equipment', 'material', 'consumable', 'unknown'], filters.kind, (value) => (filters.kind = value), 'All')),
        control('Type', picker(types, filters.type, (value) => (filters.type = value), 'All')),
        control('Tier', picker(tiers, filters.tier, (value) => (filters.tier = value), 'All')),
        control('Craftable', picker(['yes', 'no'], filters.craftable, (value) => (filters.craftable = value), 'Either')),
        control(
          'Level from',
          h('input', {
            type: 'number',
            value: '0',
            onchange: (event: Event) => {
              filters.minLevel = Number((event.target as HTMLInputElement).value) || 0;
              renderList();
            },
          }),
        ),
        control(
          'to',
          h('input', {
            type: 'number',
            value: '999',
            onchange: (event: Event) => {
              filters.maxLevel = Number((event.target as HTMLInputElement).value) || 999;
              renderList();
            },
          }),
        ),
      ),
    ),
    listBox,
  );

  renderList();
  return root;
}
