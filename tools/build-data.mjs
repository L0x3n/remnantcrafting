// Converts data/raw/*.lua (+ the card table) into the JSON the site loads.
// Run with: npm run data

import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import { parseDataModule } from './lua2json.mjs';
import { CARD_MECHANICS } from './cards.mjs';

const ROOT = join(dirname(fileURLToPath(import.meta.url)), '..');
const RAW = join(ROOT, 'data', 'raw');
const OUT = join(ROOT, 'public', 'data');

// The source data spells several professions more than one way.
const PROFESSION_ALIASES = {
  weaponsmithing: 'Weapon Smithing',
  'weapon smithing': 'Weapon Smithing',
  'armor crafting': 'Armor Crafting',
  armorcrafting: 'Armor Crafting',
  jeweler: 'Jeweler',
  jewelry: 'Jeweler',
  'jewelry crafting': 'Jeweler',
  alchemy: 'Alchemy',
  cooking: 'Cooking',
  general: 'General',
  artisan: 'Artisan',
  transmutation: 'Transmutation',
};

const PROFESSIONS = [
  'Weapon Smithing',
  'Armor Crafting',
  'Jeweler',
  'Alchemy',
  'Cooking',
  'General',
  'Artisan',
  'Transmutation',
];

const normProfession = (raw) => {
  const key = String(raw ?? '').trim().toLowerCase();
  return PROFESSION_ALIASES[key] ?? (raw ? String(raw).trim() : 'Unknown');
};

const clean = (value) => (typeof value === 'string' ? value.trim() : value);
const isBlank = (value) => value === undefined || value === null || String(value).trim() === '';
const arr = (value) => (Array.isArray(value) ? value : value && typeof value === 'object' ? Object.values(value) : []);

/** Drops the wiki's empty placeholder rows: {name = "", quantity = "", chance = ""} */
const realRows = (rows) => arr(rows).filter((row) => row && typeof row === 'object' && !isBlank(row.name ?? row.type));

const slugify = (name) =>
  String(name)
    .toLowerCase()
    .replace(/['’]/g, '')
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-|-$/g, '');

// ---------------------------------------------------------------- entities

function equipmentEntity(raw) {
  return {
    name: clean(raw.name),
    slug: slugify(raw.name),
    kind: 'equipment',
    image: clean(raw.image) || '',
    caption: clean(raw.caption) || '',
    equipmentType: clean(raw.equipmentType) || '',
    weaponType: clean(raw.weaponType) || '',
    armorType: clean(raw.armorType) || '',
    accessoryType: clean(raw.accessoryType) || '',
    level: typeof raw.level === 'number' ? raw.level : null,
    tier: clean(raw.tier) || '',
    slots: typeof raw.slots === 'number' ? raw.slots : null,
    statLines: realRows(raw.stats).map((row) => clean(row.stat)).filter(Boolean),
    echoes: realRows(raw.echoes).map((row) => ({
      name: clean(row.name),
      quantity: clean(row.quantity) ?? '',
      chance: clean(row.chance) ?? '',
    })),
    drops: realRows(raw.drops).map((row) => ({ from: clean(row.name), chance: clean(row.chance) ?? '' })),
    purchase: realRows(raw.purchase).map((row) => ({
      from: clean(row.name),
      buy: clean(row.purchasePrice) ?? '',
      sell: clean(row.sellPrice) ?? '',
    })),
    lifeSkilling: [],
    tradable: clean(raw.tradable) ?? '',
    craftable: clean(raw.craftable) ?? '',
  };
}

function itemEntity(raw, kind) {
  return {
    name: clean(raw.name),
    slug: slugify(raw.name),
    kind,
    image: clean(raw.image) || '',
    caption: clean(raw.caption) || '',
    inventoryTab: clean(raw.inventoryTab) || '',
    level: typeof raw.level === 'number' ? raw.level : null,
    tier: '',
    statLines: realRows(raw.stats).map((row) => clean(row.stat)).filter(Boolean),
    echoes: [],
    drops: realRows(raw.drops).map((row) => ({ from: clean(row.name), chance: clean(row.chance) ?? '' })),
    purchase: realRows(raw.purchase).map((row) => ({
      from: clean(row.name),
      buy: clean(row.purchasePrice) ?? '',
      sell: clean(row.sellPrice) ?? '',
    })),
    lifeSkilling: realRows(raw.lifeSkilling).map((row) => ({
      map: clean(row.map) ?? '',
      skill: clean(row.skillingType) ?? '',
      level: typeof row.level === 'number' ? row.level : null,
      node: clean(row.node) ?? '',
      chance: clean(row.chance) ?? '',
    })),
    dungeons: realRows(raw.dungeons).map((row) => ({
      name: clean(row.name),
      level: row.level ?? null,
      difficulty: clean(row.difficulty) ?? '',
      chests: realRows(row.chests).map((chest) => ({ type: clean(chest.type), chance: clean(chest.chance) ?? '' })),
    })),
    tradable: clean(raw.tradable) ?? '',
    craftable: clean(raw.craftable) ?? '',
  };
}

// ----------------------------------------------------------------- recipes

/**
 * Recipes appear twice in the source: on the crafted item (`crafting`) and on
 * every ingredient (`craftingUsage`). We collect both and dedupe, because
 * neither list is complete on its own.
 */
function collectRecipes(entries, { ownerIsOutput }) {
  const found = [];
  for (const [owner, raw] of Object.entries(entries)) {
    const push = (row, assumedOutput) => {
      if (!row || typeof row !== 'object' || isBlank(row.craftingType)) return;
      const inputs = realRows(row.resources)
        .map((res) => ({ name: clean(res.name), qty: Number(res.quantity) || 1 }))
        .filter((res) => res.name);
      if (!inputs.length) return;
      found.push({
        output: assumedOutput,
        outputQty: Number(row.quantity) || 1,
        profession: normProfession(row.craftingType),
        level: typeof row.craftingLevel === 'number' ? row.craftingLevel : null,
        inputs,
      });
    };

    // `crafting` on an item = how to make that item. The row's own `name` field
    // is unreliable in the source data (copy-paste leftovers), so we trust the owner.
    for (const row of arr(raw.crafting)) push(row, ownerIsOutput ? owner : clean(row.name));
    // `craftingUsage` on a material = recipes that consume it; here `name` is the output.
    for (const row of arr(raw.craftingUsage)) push(row, clean(row.name));
  }
  return found;
}

function dedupeRecipes(list) {
  const byKey = new Map();
  for (const recipe of list) {
    if (!recipe.output) continue;
    const inputs = [...recipe.inputs].sort((a, b) => a.name.localeCompare(b.name));
    const key = [
      recipe.output,
      recipe.profession,
      recipe.level ?? '?',
      inputs.map((i) => `${i.name}x${i.qty}`).join('+'),
    ].join('|');
    if (!byKey.has(key)) byKey.set(key, { ...recipe, inputs, id: slugify(key).slice(0, 90) });
  }
  return [...byKey.values()].sort(
    (a, b) => a.profession.localeCompare(b.profession) || (a.level ?? 0) - (b.level ?? 0) || a.output.localeCompare(b.output),
  );
}

// ------------------------------------------------------------------- cards

/** Strips the wiki markup that would otherwise leak into card descriptions. */
function stripWikitext(text) {
  return String(text)
    .replace(/\[\[[^\]|]*\|([^\]]*)\]\]/g, '$1')
    .replace(/\[\[([^\]]*)\]\]/g, '$1')
    .replace(/\{\{[^}]*\}\}/g, '')
    .replace(/'''''|'''|''/g, '')
    .replace(/<[^>]+>/g, '')
    .replace(/\s+/g, ' ')
    .trim();
}

function parseCardTable(wikitext) {
  const rows = [];
  for (const line of wikitext.split('\n')) {
    if (!line.startsWith('|') || line.startsWith('|-') || line.startsWith('|}')) continue;
    const cells = line.slice(1).split('||').map((cell) => cell.trim());
    if (cells.length < 6) continue;
    const [name, description, ...rarityCells] = cells;
    if (!name || name.startsWith('style=')) continue;
    const rarities = ['Common', 'Rare', 'Mythic', 'Legendary'].filter((_, index) => rarityCells[index]?.includes('File:'));
    rows.push({ name: stripWikitext(name), description: stripWikitext(description), rarities });
  }
  return rows;
}

function buildCards(wikitext) {
  const parsed = parseCardTable(wikitext);
  const byName = new Map(parsed.map((row) => [row.name.toLowerCase(), row]));
  const unmatched = [];

  const cards = CARD_MECHANICS.map((card) => {
    const row = byName.get(card.name.toLowerCase());
    if (!row) unmatched.push(card.name);
    byName.delete(card.name.toLowerCase());
    return {
      ...card,
      description: row?.description ?? card.description ?? '',
      rarities: row?.rarities?.length ? row.rarities : card.rarities,
    };
  });

  return { cards, unmatched, unmodelled: [...byName.values()].map((row) => row.name) };
}

// -------------------------------------------------------------------- main

async function main() {
  const read = async (file) => readFile(join(RAW, file), 'utf8');

  const equipmentRaw = parseDataModule(await read('Module_Data_Equipment.lua'));
  const itemsRaw = parseDataModule(await read('Module_Data_Items.lua'));
  const consumablesRaw = parseDataModule(await read('Module_Data_Consumables.lua'));
  const monstersRaw = parseDataModule(await read('Module_Data_Monsters.lua'));
  const locationsRaw = parseDataModule(await read('Module_Data_Locations.lua'));
  const skillsRaw = parseDataModule(await read('Module_Data_Skills.lua'));

  const entities = [
    ...Object.values(equipmentRaw).map(equipmentEntity),
    ...Object.entries(itemsRaw).map(([, raw]) => itemEntity(raw, 'material')),
    ...Object.entries(consumablesRaw).map(([, raw]) => itemEntity(raw, 'consumable')),
  ].filter((entity) => entity.name);

  const recipes = dedupeRecipes([
    ...collectRecipes(equipmentRaw, { ownerIsOutput: true }),
    ...collectRecipes(itemsRaw, { ownerIsOutput: true }),
    ...collectRecipes(consumablesRaw, { ownerIsOutput: true }),
  ]);

  // Every name that shows up anywhere, so the planner can walk a material tree
  // even when an ingredient has no page of its own yet.
  const known = new Map(entities.map((entity) => [entity.name, entity]));
  const referenced = new Set();
  for (const recipe of recipes) {
    referenced.add(recipe.output);
    recipe.inputs.forEach((input) => referenced.add(input.name));
  }
  const ghosts = [...referenced]
    .filter((name) => !known.has(name))
    .map((name) => ({ name, slug: slugify(name), kind: 'unknown', image: '', caption: '', statLines: [], drops: [], purchase: [], lifeSkilling: [], echoes: [] }));

  const monsters = Object.values(monstersRaw)
    .filter((raw) => raw?.name)
    .map((raw) => ({
      name: clean(raw.name),
      slug: slugify(raw.name),
      image: clean(raw.image) || '',
      level: raw.level ?? null,
      hp: clean(raw.hp) ?? '',
      atk: clean(raw.atk) ?? '',
      def: clean(raw.def) ?? '',
      exp: clean(raw.exp) ?? '',
      spd: raw.spd ?? '',
      element: arr(raw.element).map(clean).filter(Boolean),
      maps: arr(raw.maps).map((row) => (typeof row === 'string' ? row : clean(row?.name))).filter(Boolean),
      drops: realRows(raw.drops).map((row) => ({ name: clean(row.name), chance: clean(row.chance) ?? '' })),
    }));

  const gatherRow = (row) => ({ name: clean(row.name), chance: clean(row.chance) ?? '' });

  const locations = Object.entries(locationsRaw)
    .filter(([, raw]) => raw && typeof raw === 'object')
    .map(([key, raw]) => ({
      name: clean(raw.name) || key,
      slug: slugify(clean(raw.name) || key),
      image: clean(raw.image) || '',
      caption: clean(raw.caption) || '',
      level: typeof raw.level === 'number' ? raw.level : null,
      portals: realRows(raw.portals).map((row) => clean(row.name)),
      interactables: realRows(raw.interactables).map((row) => ({ type: clean(row.type) ?? '', name: clean(row.name) })),
      monsters: realRows(raw.monsters).map((row) => ({ name: clean(row.name), essence: clean(row.essence) ?? '' })),
      fishing: realRows(raw.fishing).map(gatherRow),
      mining: realRows(raw.mining).map(gatherRow),
      herbalism: realRows(raw.herbalism).map(gatherRow),
    }));

  // material name -> every documented way to get it, so the planner can answer
  // "you need 240 Quartz, go here".
  const sources = {};
  const seenSource = new Set();
  const addSource = (name, source) => {
    if (!name || !source.where) return;
    const key = `${name}|${source.via}|${source.where}`;
    if (seenSource.has(key)) return;
    seenSource.add(key);
    (sources[name] ??= []).push(source);
  };
  for (const location of locations) {
    for (const skill of ['fishing', 'mining', 'herbalism']) {
      for (const row of location[skill]) {
        addSource(row.name, { via: skill, where: location.name, chance: row.chance });
      }
    }
  }
  for (const monster of monsters) {
    for (const drop of monster.drops) addSource(drop.name, { via: 'drop', where: monster.name, chance: drop.chance });
  }
  for (const entity of entities) {
    for (const row of entity.lifeSkilling ?? []) {
      addSource(entity.name, { via: String(row.skill || 'gathering').toLowerCase(), where: row.map, chance: row.chance, node: row.node });
    }
    for (const row of entity.purchase ?? []) addSource(entity.name, { via: 'shop', where: row.from, price: row.buy });
    // Some items name a monster that has no page of its own, so take the drop
    // list from the item side too.
    for (const drop of entity.drops ?? []) addSource(entity.name, { via: 'drop', where: drop.from, chance: drop.chance });
  }

  const skills = Object.entries(skillsRaw)
    .filter(([, raw]) => raw && typeof raw === 'object')
    .map(([key, raw]) => ({
      name: clean(raw.name) || key,
      slug: slugify(clean(raw.name) || key),
      image: clean(raw.image) || '',
      type: clean(raw.type) ?? '',
      classes: realRows(raw.skillClasses).map((row) => clean(row.name)),
      description: clean(raw.description) ?? '',
      benefits: clean(raw.benefits) ?? '',
      cost: clean(raw.cost) ?? '',
      cooldown: clean(raw.cooldown) ?? '',
      duration: clean(raw.duration) ?? '',
      power: clean(raw.power) ?? '',
      maxLevel: clean(raw.maxLevel) ?? null,
      requirements: realRows(raw.skillRequirements).map((row) => ({ name: clean(row.name), level: row.level ?? '' })),
      passivePerks: arr(raw.passivePerks)
        .filter((row) => row && !isBlank(row.effect))
        .map((row) => ({ interval: clean(row.interval) ?? '', effect: clean(row.effect) })),
      upgrades: arr(raw.skillUpgrades)
        .filter((row) => row && (!isBlank(row.name) || !isBlank(row.effect)))
        .map((row) => ({ name: clean(row.name) ?? '', level: clean(row.level) ?? '', effect: clean(row.effect ?? row.description) ?? '' })),
    }));

  const { cards, unmatched, unmodelled } = buildCards(await read('Template_ArmorCards.wiki'));

  await mkdir(OUT, { recursive: true });
  const write = async (file, value) => {
    const json = JSON.stringify(value);
    await writeFile(join(OUT, file), json, 'utf8');
    return json.length;
  };

  const sizes = {
    'entities.json': await write('entities.json', [...entities, ...ghosts]),
    'recipes.json': await write('recipes.json', recipes),
    'monsters.json': await write('monsters.json', monsters),
    'locations.json': await write('locations.json', locations),
    'skills.json': await write('skills.json', skills),
    'sources.json': await write('sources.json', sources),
    'cards.json': await write('cards.json', cards),
    'meta.json': await write('meta.json', {
      generatedFrom: 'soulsremnant.wiki.gg Module:Data/* (CC BY-SA 4.0)',
      professions: PROFESSIONS,
      counts: {
        entities: entities.length,
        placeholders: ghosts.length,
        recipes: recipes.length,
        monsters: monsters.length,
        locations: locations.length,
        skills: skills.length,
        cards: cards.length,
        sourcedMaterials: Object.keys(sources).length,
      },
    }),
  };

  const byProfession = {};
  for (const recipe of recipes) byProfession[recipe.profession] = (byProfession[recipe.profession] ?? 0) + 1;

  console.log(`entities      ${entities.length} (+${ghosts.length} referenced-only)`);
  console.log(`recipes       ${recipes.length}`, byProfession);
  console.log(`monsters      ${monsters.length}`);
  console.log(`locations     ${locations.length}`);
  console.log(`skills        ${skills.length}`);
  console.log(`cards         ${cards.length}`);
  if (unmatched.length) console.warn(`WARN cards modelled but not in the wiki table: ${unmatched.join(', ')}`);
  if (unmodelled.length) console.warn(`WARN cards in the wiki table with no mechanics: ${unmodelled.join(', ')}`);
  for (const [file, bytes] of Object.entries(sizes)) console.log(`  ${file.padEnd(16)} ${(bytes / 1024).toFixed(1)} kB`);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
