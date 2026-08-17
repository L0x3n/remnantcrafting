import { db } from '../db.ts';
import { h, section, table } from '../ui.ts';

export async function render(): Promise<Node> {
  const data = await db();
  const counts = data.meta.counts;

  const missingStats = data.entities.filter((entity) => entity.kind === 'equipment' && entity.statLines.length === 0).length;
  const uncraftable = data.entities.filter((entity) => entity.kind === 'equipment' && !data.recipesByOutput.has(entity.name)).length;
  const noSources = data.entities.filter((entity) => entity.kind === 'material' && !(data.sources[entity.name] ?? []).length).length;

  return h(
    'div',
    null,
    h('h1', null, 'Källor och datastatus'),
    section(
      'Var datan kommer ifrån',
      h(
        'p',
        null,
        'All speldata är importerad från ',
        h('a', { href: 'https://soulsremnant.wiki.gg/', target: '_blank', rel: 'noreferrer' }, 'soulsremnant.wiki.gg'),
        ', närmare bestämt dess Lua-datamoduler (Module:Data/Equipment, Items, Consumables, Monsters, Locations, Skills) och korttabellen i Template:ArmorCards.',
      ),
      h(
        'p',
        null,
        'Innehållet där är licensierat under ',
        h('a', { href: 'https://creativecommons.org/licenses/by-sa/4.0', target: '_blank', rel: 'noreferrer' }, 'CC BY-SA 4.0'),
        '. Den här sidan använder det under samma licens, med den attributionen. Sidan är inte knuten till spelets utvecklare och inte till wiki.gg.',
      ),
      h('p', null, 'Importen körs om med två kommandon (npm run fetch följt av npm run data), så en uppdatering av wikin går att hämta in när som helst.'),
    ),
    section(
      'Vad som importerades',
      table(
        ['Sort', 'Antal'],
        Object.entries(counts).map(([key, value]) => [key, h('span', { class: 'num mono' }, String(value))]),
      ),
    ),
    section(
      'Kända luckor i källdatan',
      h(
        'ul',
        null,
        h('li', null, `${missingStats} utrustningssidor saknar stat-rader helt.`),
        h('li', null, `${uncraftable} utrustningssidor har inget dokumenterat recept.`),
        h('li', null, `${noSources} material saknar dokumenterad källa (var de farmas).`),
        h('li', null, `${counts.placeholders} namn förekommer bara som ingrediens i andra recept och har ingen egen sida ännu.`),
        h('li', null, 'Gathering-sidan på wikin är märkt som pågående arbete, så nodnivåer och exp saknas.'),
        h(
          'li',
          null,
          'Cooking vänder på gap-mekaniken: cooking-föremål börjar på sitt maxvärde och korten räknar på nuvarande värde. Simulatorn modellerar bara den vanliga riktningen, alltså inte Cooking.',
        ),
        ...(data.meta.dataIssues?.selfReferential ?? []).map((row) =>
          h('li', null, h('b', null, row.output), ` listar sig själv som ingrediens (${row.qty} st). Ett rent skrivfel i källan, planeraren stannar där istället för att loopa.`),
        ),
        ...(data.meta.dataIssues?.mergedNames ?? []).map((row) => h('li', null, row, ' (samma material, två stavningar i källan).')),
      ),
      h('p', { class: 'muted' }, 'Luckorna kommer från källan, inte från importen. De listas här så att inget ser mer komplett ut än det är.'),
    ),
    section(
      'Vad simulatorn antar',
      h(
        'ul',
        null,
        h('li', null, 'Dragchanserna per sällsynthet är en gissning som går att ändra i simulatorn.'),
        h('li', null, 'Mystery Strike modelleras som ett jämnt slag i ett intervall.'),
        h('li', null, 'Reroll-korten antas landa jämnt fördelat mellan radens min och max.'),
        h('li', null, 'Echo Trade antas dra ner varje rad 35% mot minimum, spegelvänt mot hur vinster stänger gapet uppåt.'),
        h('li', null, 'Echoes värderas efter en vikt du själv sätter, eftersom deras effekt varierar per föremål.'),
      ),
      h('p', null, h('a', { href: '#/cards' }, 'Kortlistan'), ' markerar varje antagande direkt vid kortet.'),
    ),
  );
}
