import { db, type Database } from '../db.ts';
import { h, section, table } from '../ui.ts';

function detail(data: Database, slug: string): Node {
  const skill = data.skillBySlug.get(slug);
  if (!skill) return h('div', { class: 'panel' }, h('h1', null, 'Unknown skill'));

  const meta: [string, string][] = [
    ['Type', skill.type],
    ['Class', skill.classes.join(', ')],
    ['Max level', skill.maxLevel ?? ''],
    ['Cost', skill.cost],
    ['Cooldown', skill.cooldown],
    ['Duration', skill.duration],
    ['Power', skill.power],
  ];

  return h(
    'div',
    null,
    h(
      'div',
      { class: 'panel' },
      h('h1', null, skill.name),
      skill.description ? h('p', { class: 'lede' }, skill.description) : null,
      h('dl', { class: 'kv' }, ...meta.filter(([, value]) => value).flatMap(([key, value]) => [h('dt', null, key), h('dd', null, value)])),
    ),
    skill.passivePerks.length
      ? section('Passive perks', table(['Every X levels', 'Effect'], skill.passivePerks.map((perk) => [h('span', { class: 'num mono' }, perk.interval), perk.effect])))
      : null,
    skill.upgrades.length
      ? section('Upgrades', table(['Name', 'Level', 'Effect'], skill.upgrades.map((upgrade) => [upgrade.name, upgrade.level, upgrade.effect])))
      : null,
    skill.requirements.length
      ? section('Requirements', h('div', { class: 'row' }, ...skill.requirements.map((req) => h('span', { class: 'chip' }, `${req.name} ${req.level}`))))
      : null,
  );
}

export async function render(params: Record<string, string>): Promise<Node> {
  const data = await db();
  if (params.slug) return detail(data, params.slug);

  const rows = [...data.skills].sort((a, b) => a.type.localeCompare(b.type) || a.name.localeCompare(b.name));
  return h(
    'div',
    null,
    h('h1', null, 'Skills'),
    h('p', { class: 'lede' }, `${rows.length} skills with cost, cooldown and passive perks.`),
    h(
      'div',
      { class: 'scroll' },
      table(
        ['Name', 'Type', 'Class', 'Cost', 'Cooldown', 'Max lv'],
        rows.map((skill) => [
          h('a', { href: `#/skills/${skill.slug}` }, skill.name),
          skill.type,
          skill.classes.join(', '),
          skill.cost,
          skill.cooldown,
          h('span', { class: 'num mono' }, skill.maxLevel ?? ''),
        ]),
      ),
    ),
  );
}
