// Loads the generated database once and builds the indexes every page needs.

import type { Recipe } from './craft/planner.ts';
import type { CardDef } from './craft/engine.ts';

export interface Entity {
  name: string;
  slug: string;
  kind: 'equipment' | 'material' | 'consumable' | 'unknown';
  image: string;
  caption: string;
  equipmentType?: string;
  weaponType?: string;
  armorType?: string;
  accessoryType?: string;
  inventoryTab?: string;
  level: number | null;
  tier?: string;
  slots?: number | null;
  statLines: string[];
  echoes: { name: string; quantity: string; chance: string }[];
  drops: { from: string; chance: string }[];
  purchase: { from: string; buy: string; sell: string }[];
  lifeSkilling: { map: string; skill: string; level: number | null; node: string; chance: string }[];
  dungeons?: { name: string; level: unknown; difficulty: string; chests: { type: string; chance: string }[] }[];
  tradable?: string;
  craftable?: string;
}

export interface Monster {
  name: string;
  slug: string;
  image: string;
  level: number | null;
  hp: string;
  atk: string;
  def: string;
  exp: string;
  spd: string | number;
  element: string[];
  maps: string[];
  drops: { name: string; chance: string }[];
}

export interface Location {
  name: string;
  slug: string;
  image: string;
  caption: string;
  level: number | null;
  portals: string[];
  interactables: { type: string; name: string }[];
  monsters: { name: string; essence: string }[];
  fishing: { name: string; chance: string }[];
  mining: { name: string; chance: string }[];
  herbalism: { name: string; chance: string }[];
}

export interface Skill {
  name: string;
  slug: string;
  image: string;
  type: string;
  classes: string[];
  description: string;
  benefits: string;
  cost: string;
  cooldown: string;
  duration: string;
  power: string;
  maxLevel: string | null;
  requirements: { name: string; level: string | number }[];
  passivePerks: { interval: string; effect: string }[];
  upgrades: { name: string; level: string; effect: string }[];
}

export interface SourceEntry {
  via: string;
  where: string;
  chance?: string;
  node?: string;
  price?: string;
}

export interface Meta {
  generatedFrom: string;
  professions: string[];
  counts: Record<string, number>;
  dataIssues?: {
    selfReferential: { output: string; qty: number; profession: string }[];
    mergedNames: string[];
  };
}

export interface Database {
  entities: Entity[];
  recipes: Recipe[];
  monsters: Monster[];
  locations: Location[];
  skills: Skill[];
  cards: CardDef[];
  sources: Record<string, SourceEntry[]>;
  meta: Meta;
  byName: Map<string, Entity>;
  bySlug: Map<string, Entity>;
  recipesByOutput: Map<string, Recipe[]>;
  recipesByInput: Map<string, Recipe[]>;
  monsterBySlug: Map<string, Monster>;
  locationBySlug: Map<string, Location>;
  skillBySlug: Map<string, Skill>;
}

const base = import.meta.env.BASE_URL;

async function loadJson<T>(file: string): Promise<T> {
  const res = await fetch(`${base}data/${file}`);
  if (!res.ok) throw new Error(`Kunde inte ladda ${file} (HTTP ${res.status})`);
  return res.json() as Promise<T>;
}

let cache: Promise<Database> | null = null;

export function db(): Promise<Database> {
  cache ??= (async () => {
    const [entities, recipes, monsters, locations, skills, cards, sources, meta] = await Promise.all([
      loadJson<Entity[]>('entities.json'),
      loadJson<Recipe[]>('recipes.json'),
      loadJson<Monster[]>('monsters.json'),
      loadJson<Location[]>('locations.json'),
      loadJson<Skill[]>('skills.json'),
      loadJson<CardDef[]>('cards.json'),
      loadJson<Record<string, SourceEntry[]>>('sources.json'),
      loadJson<Meta>('meta.json'),
    ]);

    const byName = new Map(entities.map((entity) => [entity.name, entity]));
    const bySlug = new Map(entities.map((entity) => [entity.slug, entity]));
    const recipesByOutput = new Map<string, Recipe[]>();
    const recipesByInput = new Map<string, Recipe[]>();

    for (const recipe of recipes) {
      const outs = recipesByOutput.get(recipe.output) ?? [];
      outs.push(recipe);
      recipesByOutput.set(recipe.output, outs);
      for (const input of recipe.inputs) {
        const ins = recipesByInput.get(input.name) ?? [];
        ins.push(recipe);
        recipesByInput.set(input.name, ins);
      }
    }

    return {
      entities,
      recipes,
      monsters,
      locations,
      skills,
      cards,
      sources,
      meta,
      byName,
      bySlug,
      recipesByOutput,
      recipesByInput,
      monsterBySlug: new Map(monsters.map((monster) => [monster.slug, monster])),
      locationBySlug: new Map(locations.map((location) => [location.slug, location])),
      skillBySlug: new Map(skills.map((skill) => [skill.slug, skill])),
    };
  })();
  return cache;
}

// ---------------------------------------------------------------- searching

export interface SearchHit {
  name: string;
  slug: string;
  kind: string;
  href: string;
  detail: string;
  score: number;
}

/** Prefix matches beat word-start matches beat substring matches. */
function scoreMatch(name: string, query: string): number {
  const haystack = name.toLowerCase();
  if (haystack === query) return 100;
  if (haystack.startsWith(query)) return 80 - haystack.length * 0.01;
  if (haystack.includes(` ${query}`)) return 60 - haystack.length * 0.01;
  if (haystack.includes(query)) return 40 - haystack.length * 0.01;
  return 0;
}

export function search(data: Database, rawQuery: string, limit = 24): SearchHit[] {
  const query = rawQuery.trim().toLowerCase();
  if (query.length < 2) return [];
  const hits: SearchHit[] = [];

  const add = (name: string, slug: string, kind: string, href: string, detail: string) => {
    const score = scoreMatch(name, query);
    if (score > 0) hits.push({ name, slug, kind, href, detail, score });
  };

  for (const entity of data.entities) {
    const detail = entity.kind === 'equipment' ? [entity.tier, entity.equipmentType, entity.level ? `Lv ${entity.level}` : ''].filter(Boolean).join(' · ') : entity.kind;
    add(entity.name, entity.slug, entity.kind, `#/i/${entity.slug}`, detail);
  }
  for (const monster of data.monsters) add(monster.name, monster.slug, 'monster', `#/monsters/${monster.slug}`, monster.level ? `Lv ${monster.level}` : '');
  for (const location of data.locations) add(location.name, location.slug, 'karta', `#/maps/${location.slug}`, location.level ? `Lv ${location.level}` : '');
  for (const skill of data.skills) add(skill.name, skill.slug, 'skill', `#/skills/${skill.slug}`, skill.type);

  return hits.sort((a, b) => b.score - a.score || a.name.localeCompare(b.name)).slice(0, limit);
}

/** Sprite URL for an entity, or null when we have not mirrored an image for it. */
export function iconUrl(image: string | undefined): string | null {
  if (!image) return null;
  return `${base}img/${encodeURIComponent(image)}`;
}
