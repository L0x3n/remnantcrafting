// Pulls the raw source of the wiki.gg data modules we build our database from.
// Content there is CC BY-SA 4.0; see CREDITS.md for attribution.

import { mkdir, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = join(dirname(fileURLToPath(import.meta.url)), '..');
const RAW = join(ROOT, 'data', 'raw');
const UA = 'soulsremnant-wiki-builder/0.1 (fan project data import; contact via github.com/L0x3n)';

const PAGES = [
  'Module:Data/Equipment',
  'Module:Data/Items',
  'Module:Data/Consumables',
  'Module:Data/Monsters',
  'Module:Data/Locations',
  'Module:Data/Skills',
  'Template:ArmorCards',
  'Crafting',
  'Gathering',
  'Cooking',
];

const slug = (page) => page.replace(/[:/\s]/g, '_');

async function fetchRaw(page) {
  const url = `https://soulsremnant.wiki.gg/wiki/${encodeURIComponent(page)}?action=raw`;
  const res = await fetch(url, { headers: { 'User-Agent': UA } });
  if (!res.ok) throw new Error(`${page}: HTTP ${res.status}`);
  return res.text();
}

async function main() {
  await mkdir(RAW, { recursive: true });
  for (const page of PAGES) {
    const body = await fetchRaw(page);
    const ext = page.startsWith('Module:') ? 'lua' : 'wiki';
    await writeFile(join(RAW, `${slug(page)}.${ext}`), body, 'utf8');
    console.log(`${page.padEnd(28)} ${String(body.length).padStart(8)} bytes`);
    await new Promise((r) => setTimeout(r, 400)); // be polite
  }
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
