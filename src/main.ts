import './styles.css';
import { db, search } from './db.ts';
import { startRouter, type Route } from './router.ts';
import { debounce, h } from './ui.ts';

const NAV = [
  {
    title: 'Teorycrafting',
    links: [
      ['#/planner', 'Materialplanerare'],
      ['#/simulator', 'Craft-simulator'],
      ['#/cards', 'Kortlista'],
      ['#/recipes', 'Recept'],
    ],
  },
  {
    title: 'Databas',
    links: [
      ['#/db', 'Föremål'],
      ['#/monsters', 'Monster'],
      ['#/maps', 'Kartor'],
      ['#/skills', 'Skills'],
    ],
  },
  {
    title: 'Om',
    links: [
      ['#/', 'Start'],
      ['#/about', 'Källor och status'],
    ],
  },
];

function searchBox(): HTMLElement {
  const input = h('input', {
    type: 'search',
    placeholder: 'Sök föremål, monster, karta, skill…',
    autocomplete: 'off',
    'aria-label': 'Sök',
  });
  const results = h('div', { class: 'results', hidden: true });
  let cursor = -1;

  const close = () => {
    results.hidden = true;
    results.replaceChildren();
    cursor = -1;
  };

  const run = async () => {
    const query = input.value;
    if (query.trim().length < 2) return close();
    const data = await db();
    const hits = search(data, query);
    cursor = -1;
    if (!hits.length) {
      results.replaceChildren(h('a', { href: '#/db' }, 'Inga träffar. Bläddra i databasen istället.'));
      results.hidden = false;
      return;
    }
    results.replaceChildren(
      ...hits.map((hit) =>
        h(
          'a',
          { href: hit.href, onclick: close },
          h('span', null, hit.name),
          h('small', null, [hit.kind, hit.detail].filter(Boolean).join(' · ')),
        ),
      ),
    );
    results.hidden = false;
  };

  input.addEventListener('input', () => debounce(run, 110));
  input.addEventListener('focus', () => {
    if (input.value.trim().length >= 2) void run();
  });
  input.addEventListener('keydown', (event) => {
    const items = [...results.querySelectorAll('a')];
    if (event.key === 'Escape') return close();
    if (!items.length) return;
    if (event.key === 'ArrowDown' || event.key === 'ArrowUp') {
      event.preventDefault();
      cursor = (cursor + (event.key === 'ArrowDown' ? 1 : items.length - 1)) % items.length;
      items.forEach((item, index) => item.classList.toggle('cursor', index === cursor));
      items[cursor].scrollIntoView({ block: 'nearest' });
    }
    if (event.key === 'Enter' && cursor >= 0) {
      location.hash = items[cursor].getAttribute('href') ?? '#/';
      input.blur();
      close();
    }
  });

  document.addEventListener('click', (event) => {
    if (!(event.target instanceof Node) || !results.parentElement?.contains(event.target)) close();
  });
  document.addEventListener('keydown', (event) => {
    if (event.key === '/' && document.activeElement !== input) {
      event.preventDefault();
      input.focus();
    }
  });

  return h('div', { class: 'searchbox' }, input, results);
}

const VERSION = '0.1 beta';

function twitchButton(): HTMLElement {
  return h(
    'a',
    { class: 'twitch', href: 'https://www.twitch.tv/anugy', target: '_blank', rel: 'noreferrer' },
    h('span', { class: 'twitch-glyph', 'aria-hidden': 'true' }, '▶'),
    'follow anugy on twitch',
  );
}

function shell(): HTMLElement {
  const outlet = h('main', { id: 'outlet' });
  const app = h(
    'div',
    { class: 'shell' },
    h(
      'header',
      { class: 'topbar' },
      h(
        'a',
        { class: 'brand', href: '#/' },
        h('img', { class: 'brand-mark', src: `${import.meta.env.BASE_URL}favicon.png`, alt: '', onerror: (event: Event) => (event.target as HTMLElement).remove() }),
        h('span', { class: 'brand-text' }, h('b', null, 'remnant'), 'crafting', h('small', null, `version ${VERSION}`)),
      ),
      searchBox(),
      twitchButton(),
    ),
    h(
      'nav',
      { class: 'sidebar' },
      ...NAV.flatMap((group) => [
        h('h4', null, group.title),
        ...group.links.map(([href, label]) => h('a', { href, 'data-nav': '1' }, label)),
      ]),
    ),
    h(
      'div',
      { class: 'outlet-wrap' },
      outlet,
      h(
        'footer',
        { class: 'global' },
        h('p', { class: 'wip' }, 'This Wiki is a continual work-in-progress, and is maintained by the community.'),
        h(
          'p',
          { class: 'muted' },
          'made by RapidX · version ',
          VERSION,
          ' · speldata från soulsremnant.wiki.gg under CC BY-SA 4.0 · ',
          h('a', { href: '#/about' }, 'källor och datastatus'),
        ),
        twitchButton(),
      ),
    ),
  );
  document.getElementById('app')!.replaceChildren(app);
  return outlet;
}

const lazy =
  (loader: () => Promise<{ render: (params: Record<string, string>, query: URLSearchParams) => Promise<Node> | Node }>) =>
  async (params: Record<string, string>, query: URLSearchParams) =>
    (await loader()).render(params, query);

const routes: Route[] = [
  { pattern: '/', render: lazy(() => import('./pages/home.ts')) },
  { pattern: '/db', render: lazy(() => import('./pages/browse.ts')) },
  { pattern: '/i/:slug', render: lazy(() => import('./pages/entry.ts')) },
  { pattern: '/recipes', render: lazy(() => import('./pages/recipes.ts')) },
  { pattern: '/planner', render: lazy(() => import('./pages/planner.ts')) },
  { pattern: '/simulator', render: lazy(() => import('./pages/simulator.ts')) },
  { pattern: '/cards', render: lazy(() => import('./pages/cards.ts')) },
  { pattern: '/monsters', render: lazy(() => import('./pages/monsters.ts')) },
  { pattern: '/monsters/:slug', render: lazy(() => import('./pages/monsters.ts')) },
  { pattern: '/maps', render: lazy(() => import('./pages/maps.ts')) },
  { pattern: '/maps/:slug', render: lazy(() => import('./pages/maps.ts')) },
  { pattern: '/skills', render: lazy(() => import('./pages/skills.ts')) },
  { pattern: '/skills/:slug', render: lazy(() => import('./pages/skills.ts')) },
  { pattern: '/about', render: lazy(() => import('./pages/about.ts')) },
];

startRouter(routes, shell(), () =>
  h('div', { class: 'panel' }, h('h1', null, 'Sidan finns inte'), h('p', null, h('a', { href: '#/' }, 'Tillbaka till start'))),
);
