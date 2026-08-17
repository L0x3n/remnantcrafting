// Tiny DOM helpers. No framework: the pages are mostly tables and forms, and
// keeping the render path plain keeps 500-row lists instant.

type Child = Node | string | number | null | undefined | false | Child[];

/** DOM exposes these read-only, so they have to go through setAttribute. */
const ATTRIBUTE_ONLY = new Set(['list', 'form']);

export interface Attrs {
  [key: string]: unknown;
  class?: string;
  style?: string | Partial<CSSStyleDeclaration>;
  dataset?: Record<string, string>;
}

export function h<K extends keyof HTMLElementTagNameMap>(
  tag: K,
  attrs: Attrs | null = null,
  ...children: Child[]
): HTMLElementTagNameMap[K] {
  const el = document.createElement(tag);

  for (const [key, value] of Object.entries(attrs ?? {})) {
    if (value === null || value === undefined || value === false) continue;
    if (key === 'class') el.className = String(value);
    else if (key === 'dataset') Object.assign(el.dataset, value as Record<string, string>);
    else if (key === 'style' && typeof value === 'object') Object.assign(el.style, value);
    else if (key.startsWith('on') && typeof value === 'function') {
      el.addEventListener(key.slice(2).toLowerCase(), value as EventListener);
    } else if (key in el && typeof value !== 'object' && !ATTRIBUTE_ONLY.has(key)) {
      try {
        (el as unknown as Record<string, unknown>)[key] = value;
      } catch {
        // Some DOM properties are read-only (input.list); fall back to the attribute.
        el.setAttribute(key, String(value));
      }
    } else {
      el.setAttribute(key, String(value));
    }
  }

  append(el, children);
  return el;
}

export function append(parent: Node, children: Child[]): void {
  for (const child of children) {
    if (child === null || child === undefined || child === false) continue;
    if (Array.isArray(child)) append(parent, child);
    else parent.appendChild(child instanceof Node ? child : document.createTextNode(String(child)));
  }
}

export const frag = (...children: Child[]): DocumentFragment => {
  const f = document.createDocumentFragment();
  append(f, children);
  return f;
};

export const clear = (el: Element): void => {
  el.replaceChildren();
};

/** Replace an element's contents, tolerating nulls so callers can inline conditionals. */
export const mount = (el: Element, ...children: Child[]): void => {
  el.replaceChildren();
  append(el, children);
};

export const link = (href: string, ...children: Child[]) => h('a', { href }, ...children);

export const chip = (text: string, tone = '') => h('span', { class: `chip ${tone}` }, text);

export function table(headers: string[], rows: Child[][], opts: { class?: string } = {}) {
  return h(
    'table',
    { class: `data ${opts.class ?? ''}` },
    h('thead', null, h('tr', null, ...headers.map((label) => h('th', null, label)))),
    h(
      'tbody',
      null,
      ...rows.map((cells) => h('tr', null, ...cells.map((cell) => h('td', null, cell)))),
    ),
  );
}

export function section(title: string, ...children: Child[]) {
  return h('section', { class: 'panel' }, h('h2', null, title), ...children);
}

export function field(label: string, control: Node, hint?: string) {
  return h('label', { class: 'field' }, h('span', { class: 'field-label' }, label), control, hint ? h('small', null, hint) : null);
}

export function numberInput(value: number, onChange: (value: number) => void, attrs: Attrs = {}) {
  return h('input', {
    type: 'number',
    value: String(value),
    oninput: (event: Event) => onChange(Number((event.target as HTMLInputElement).value)),
    ...attrs,
  });
}

export function select<T extends string>(options: { value: T; label: string }[], value: T, onChange: (value: T) => void) {
  const el = h(
    'select',
    { onchange: (event: Event) => onChange((event.target as HTMLSelectElement).value as T) },
    ...options.map((option) => h('option', { value: option.value, selected: option.value === value }, option.label)),
  );
  el.value = value;
  return el;
}

/** Percent with one decimal, e.g. 0.8234 -> "82,3%" */
export const pct = (value: number, digits = 1) => `${(value * 100).toFixed(digits).replace('.', ',')}%`;
export const num = (value: number, digits = 1) => value.toFixed(digits).replace('.', ',');

export function bar(fraction: number, label?: string) {
  return h(
    'div',
    { class: 'bar' },
    h('div', { class: 'bar-fill', style: { width: `${Math.max(0, Math.min(1, fraction)) * 100}%` } }),
    label ? h('span', { class: 'bar-label' }, label) : null,
  );
}

let debounceTimer: number | undefined;
export function debounce(fn: () => void, ms = 120): void {
  window.clearTimeout(debounceTimer);
  debounceTimer = window.setTimeout(fn, ms);
}
