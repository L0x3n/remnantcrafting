// Mirrors the item/monster sprites referenced by the imported data.
// Run after `npm run data`. Already-downloaded files are skipped, so it is safe to re-run.

import { mkdir, readFile, readdir, writeFile } from 'node:fs/promises';
import { join, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = join(dirname(fileURLToPath(import.meta.url)), '..');
const DATA = join(ROOT, 'public', 'data');
const OUT = join(ROOT, 'public', 'img');
const UA = 'soulsremnant-wiki-builder/0.1 (fan project asset mirror; contact via github.com/L0x3n)';
const API = 'https://soulsremnant.wiki.gg/api.php';

const chunk = (list, size) => Array.from({ length: Math.ceil(list.length / size) }, (_, i) => list.slice(i * size, i * size + size));

async function wantedImages() {
  const read = async (file) => JSON.parse(await readFile(join(DATA, file), 'utf8'));
  const [entities, monsters] = await Promise.all([read('entities.json'), read('monsters.json')]);
  const names = [...entities, ...monsters].map((row) => row.image).filter(Boolean);
  return [...new Set(names)];
}

async function resolveUrls(files) {
  const titles = files.map((file) => `File:${file}`).join('|');
  const url = `${API}?action=query&format=json&prop=imageinfo&iiprop=url&titles=${encodeURIComponent(titles)}`;
  const res = await fetch(url, { headers: { 'User-Agent': UA } });
  if (!res.ok) throw new Error(`API HTTP ${res.status}`);
  const body = await res.json();
  const out = new Map();
  for (const page of Object.values(body.query?.pages ?? {})) {
    const source = page.imageinfo?.[0]?.url;
    if (source) out.set(String(page.title).replace(/^File:/, ''), source);
  }
  return out;
}

async function main() {
  await mkdir(OUT, { recursive: true });
  const existing = new Set(await readdir(OUT).catch(() => []));
  const files = (await wantedImages()).filter((file) => !existing.has(file));

  console.log(`${files.length} bilder att hämta (${existing.size} finns redan)`);
  let saved = 0;
  let missing = 0;

  for (const batch of chunk(files, 40)) {
    const urls = await resolveUrls(batch);
    for (const file of batch) {
      const source = urls.get(file);
      if (!source) {
        missing++;
        continue;
      }
      const res = await fetch(source, { headers: { 'User-Agent': UA } });
      if (!res.ok) {
        missing++;
        continue;
      }
      await writeFile(join(OUT, file), Buffer.from(await res.arrayBuffer()));
      saved++;
      await new Promise((r) => setTimeout(r, 90));
    }
    console.log(`  ${saved} sparade, ${missing} saknas på wikin`);
  }

  console.log(`Klart: ${saved} bilder sparade, ${missing} fanns inte.`);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
