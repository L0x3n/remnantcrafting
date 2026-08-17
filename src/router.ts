// Hash routing: keeps the whole site deployable as static files on any host.

export interface Route {
  pattern: string;
  render: (params: Record<string, string>, query: URLSearchParams) => Promise<Node> | Node;
}

const segments = (path: string) => path.split('/').filter(Boolean);

function match(pattern: string, path: string): Record<string, string> | null {
  const p = segments(pattern);
  const s = segments(path);
  if (p.length !== s.length) return null;
  const params: Record<string, string> = {};
  for (let i = 0; i < p.length; i++) {
    if (p[i].startsWith(':')) params[p[i].slice(1)] = decodeURIComponent(s[i]);
    else if (p[i] !== s[i]) return null;
  }
  return params;
}

export function parseHash(): { path: string; query: URLSearchParams } {
  const raw = location.hash.replace(/^#/, '') || '/';
  const [path, search = ''] = raw.split('?');
  return { path: path || '/', query: new URLSearchParams(search) };
}

export function startRouter(routes: Route[], outlet: HTMLElement, notFound: () => Node): void {
  let token = 0;

  const render = async () => {
    const current = ++token;
    const { path, query } = parseHash();

    for (const route of routes) {
      const params = match(route.pattern, path);
      if (!params) continue;
      outlet.setAttribute('aria-busy', 'true');
      try {
        const node = await route.render(params, query);
        if (current !== token) return; // a newer navigation won
        outlet.replaceChildren(node);
      } catch (error) {
        console.error(error);
        const message = error instanceof Error ? error.message : String(error);
        const box = document.createElement('div');
        box.className = 'panel error';
        box.textContent = `Något gick fel: ${message}`;
        outlet.replaceChildren(box);
      } finally {
        outlet.removeAttribute('aria-busy');
      }
      document.querySelectorAll('[data-nav]').forEach((el) => {
        const href = el.getAttribute('href') ?? '';
        el.classList.toggle('active', href.replace(/^#/, '').split('?')[0] === path);
      });
      window.scrollTo(0, 0);
      return;
    }

    outlet.replaceChildren(notFound());
  };

  window.addEventListener('hashchange', render);
  void render();
}

export const go = (href: string): void => {
  location.hash = href.replace(/^#/, '');
};
