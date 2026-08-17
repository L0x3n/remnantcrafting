import { db } from '../db.ts';
import { h, section } from '../ui.ts';

const TILES = [
  {
    href: '#/planner',
    title: 'Materialplanerare',
    body: 'Välj vad du vill crafta. Får hela materialträdet nedbrutet till råmaterial, i rätt craft-ordning, med profession-nivåerna som krävs och var varje material farmas.',
  },
  {
    href: '#/simulator',
    title: 'Craft-simulator',
    body: 'Kör crafting-minispelet några tusen gånger på ditt item. Se fördelningen, jämför spelstilar och räkna ut vad extra turer och rerolls faktiskt är värda.',
  },
  {
    href: '#/cards',
    title: 'Kortlistan',
    body: 'Alla 21 kort med den matematik de utför, plus ett tydligt exempel per sällsynthet. Antaganden är utmärkta som antaganden.',
  },
  {
    href: '#/recipes',
    title: 'Recept',
    body: 'Alla dokumenterade recept, filtrerbara på profession, craftnivå och ingående material.',
  },
];

export async function render(): Promise<Node> {
  const data = await db();
  const counts = data.meta.counts;

  return h(
    'div',
    null,
    h(
      'div',
      { class: 'panel' },
      h('h1', null, 'remnantcrafting'),
      h(
        'p',
        { class: 'lede' },
        "En databas för Soul's Remnant byggd runt en sak den nuvarande wikin inte gör: att räkna. Recepten och stat-spannen finns redan, men ingen bryter ner dem åt dig och ingen visar vad ett kortval faktiskt är värt.",
      ),
      h('p', { class: 'wip-notice' }, 'This Wiki is a continual work-in-progress, and is maintained by the community.'),
      h(
        'div',
        { class: 'row', style: { marginTop: '12px' } },
        h('span', { class: 'chip ember' }, `${counts.recipes} recept`),
        h('span', { class: 'chip' }, `${counts.entities} föremål`),
        h('span', { class: 'chip' }, `${counts.monsters} monster`),
        h('span', { class: 'chip' }, `${counts.locations} kartor`),
        h('span', { class: 'chip' }, `${counts.skills} skills`),
        h('span', { class: 'chip' }, `${counts.cards} kort`),
      ),
    ),
    h(
      'div',
      { class: 'grid two' },
      ...TILES.map((tile) =>
        h(
          'a',
          { href: tile.href, class: 'panel', style: { display: 'block', color: 'inherit', textDecoration: 'none' } },
          h('h2', null, tile.title),
          h('p', { class: 'muted', style: { margin: '0' } }, tile.body),
        ),
      ),
    ),
    section(
      'Så fungerar crafting, kort',
      h(
        'p',
        null,
        'Du får tre slumpade kort per tur och väljer ett, tills turerna tar slut. Procentkorten stänger en andel av gapet upp till radens maxvärde, inte en andel av värdet du redan har. En rad som står på 2,0 av max 10,0 hoppar till 6,0 med ett +50%-kort, medan samma rad på 9,0 bara når 9,8 med ett +75%-kort.',
      ),
      h(
        'p',
        null,
        'Värden avrundas uppåt, så ett perfekt item går att nå, men bara med tillräckligt många turer. Fler turer och rerolls får du av profession-nivå, echoes på utrustning och mat från Cooking.',
      ),
      h('p', null, h('a', { href: '#/simulator' }, 'Räkna på det i simulatorn'), ' eller ', h('a', { href: '#/cards' }, 'läs kortlistan'), '.'),
    ),
    h(
      'footer',
      { class: 'site' },
      'made by RapidX. Speldata kommer från soulsremnant.wiki.gg och används under CC BY-SA 4.0. ',
      h('a', { href: '#/about' }, 'Källor och datastatus'),
      '.',
    ),
  );
}
