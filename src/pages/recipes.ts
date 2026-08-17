// The recipe list: all 558 recipes, filterable by profession, level and ingredient.

import { db, type Database } from '../db.ts';
import { h, section, table } from '../ui.ts';

export async function render(_params: Record<string, string>, query: URLSearchParams): Promise<Node> {
  const data: Database = await db();
  const professions = [...new Set(data.recipes.map((recipe) => recipe.profession))].sort();

  const filters = {
    profession: query.get('profession') ?? '',
    text: query.get('q') ?? '',
    material: query.get('material') ?? '',
    maxLevel: 99,
  };

  const listBox = h('div', null);

  const renderList = () => {
    const rows = data.recipes
      .filter((recipe) => !filters.profession || recipe.profession === filters.profession)
      .filter((recipe) => !filters.text || recipe.output.toLowerCase().includes(filters.text.toLowerCase()))
      .filter((recipe) => !filters.material || recipe.inputs.some((input) => input.name.toLowerCase().includes(filters.material.toLowerCase())))
      .filter((recipe) => (recipe.level ?? 0) <= filters.maxLevel);

    listBox.replaceChildren(
      h('p', { class: 'muted' }, `${rows.length} recipes`),
      h(
        'div',
        { class: 'scroll' },
        table(
          ['Lv', 'Profession', 'Output', 'Yields', 'Materials'],
          rows.map((recipe) => {
            const entity = data.byName.get(recipe.output);
            return [
              h('span', { class: 'num mono' }, String(recipe.level ?? '?')),
              recipe.profession,
              entity ? h('a', { href: `#/i/${entity.slug}` }, recipe.output) : recipe.output,
              h('span', { class: 'num mono' }, `${recipe.outputQty}×`),
              h(
                'span',
                null,
                ...recipe.inputs.flatMap((input, index) => {
                  const target = data.byName.get(input.name);
                  return [
                    index ? h('span', { class: 'muted' }, ' + ') : null,
                    h('span', { class: 'mono' }, `${input.qty}× `),
                    target ? h('a', { href: `#/i/${target.slug}` }, input.name) : h('span', null, input.name),
                  ];
                }),
              ),
            ];
          }),
        ),
      ),
    );
  };

  const control = (label: string, node: Node) => h('div', { class: 'field' }, h('span', { class: 'field-label' }, label), node);

  const root = h(
    'div',
    null,
    h('h1', null, 'Recipes'),
    h('p', { class: 'lede' }, 'Every documented recipe, merged from both the item pages and the material pages so nothing falls through the cracks.'),
    section(
      'Filters',
      h(
        'div',
        { class: 'row' },
        control(
          'Profession',
          h(
            'select',
            { onchange: (event: Event) => { filters.profession = (event.target as HTMLSelectElement).value; renderList(); } },
            h('option', { value: '' }, 'All'),
            ...professions.map((profession) => h('option', { value: profession, selected: profession === filters.profession }, profession)),
          ),
        ),
        control(
          'Output',
          h('input', { type: 'search', value: filters.text, placeholder: 'e.g. Copper', oninput: (event: Event) => { filters.text = (event.target as HTMLInputElement).value; renderList(); } }),
        ),
        control(
          'Contains material',
          h('input', { type: 'search', value: filters.material, placeholder: 'e.g. Ingot', oninput: (event: Event) => { filters.material = (event.target as HTMLInputElement).value; renderList(); } }),
        ),
        control(
          'Max craft level',
          h('input', { type: 'number', value: '99', onchange: (event: Event) => { filters.maxLevel = Number((event.target as HTMLInputElement).value) || 99; renderList(); } }),
        ),
      ),
    ),
    listBox,
  );

  renderList();
  return root;
}
