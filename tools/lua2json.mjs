// Minimal Lua-table-literal parser.
// The wiki's Module:Data/* pages are plain data files: a sequence of
//   data["Some Name"] = { key = value, ... }
// statements. This tokenizes that subset and returns a plain JS object.

const PUNCT = new Set(['{', '}', '[', ']', '=', ',', ';', '(', ')']);

export function tokenize(src) {
  const tokens = [];
  let i = 0;
  const n = src.length;

  while (i < n) {
    const c = src[i];

    // whitespace
    if (c === ' ' || c === '\t' || c === '\r' || c === '\n') {
      i++;
      continue;
    }

    // comments: --[[ long ]] or -- line
    if (c === '-' && src[i + 1] === '-') {
      if (src[i + 2] === '[' && src[i + 3] === '[') {
        const end = src.indexOf(']]', i + 4);
        i = end === -1 ? n : end + 2;
      } else {
        const end = src.indexOf('\n', i);
        i = end === -1 ? n : end + 1;
      }
      continue;
    }

    // long strings [[ ... ]]
    if (c === '[' && src[i + 1] === '[') {
      const end = src.indexOf(']]', i + 2);
      const raw = src.slice(i + 2, end === -1 ? n : end);
      tokens.push({ type: 'string', value: raw });
      i = end === -1 ? n : end + 2;
      continue;
    }

    // quoted strings
    if (c === '"' || c === "'") {
      const quote = c;
      let out = '';
      i++;
      while (i < n && src[i] !== quote) {
        if (src[i] === '\\') {
          const esc = src[i + 1];
          if (esc === 'n') out += '\n';
          else if (esc === 't') out += '\t';
          else if (esc === 'r') out += '\r';
          else out += esc;
          i += 2;
        } else {
          out += src[i];
          i++;
        }
      }
      i++; // closing quote
      tokens.push({ type: 'string', value: out });
      continue;
    }

    // numbers
    if (/[0-9]/.test(c) || (c === '-' && /[0-9.]/.test(src[i + 1] ?? '')) || (c === '.' && /[0-9]/.test(src[i + 1] ?? ''))) {
      let j = i;
      if (src[j] === '-') j++;
      while (j < n && /[0-9.eExXa-fA-F+]/.test(src[j])) {
        // stop on an exponent-looking sign that is really an operator
        if ((src[j] === '+' || src[j] === '-') && !/[eE]/.test(src[j - 1])) break;
        j++;
      }
      const raw = src.slice(i, j);
      tokens.push({ type: 'number', value: Number(raw), raw });
      i = j;
      continue;
    }

    // punctuation (including the concat operator, which we surface as an error later)
    if (c === '.' && src[i + 1] === '.') {
      tokens.push({ type: 'punct', value: '..' });
      i += 2;
      continue;
    }
    if (PUNCT.has(c)) {
      tokens.push({ type: 'punct', value: c });
      i++;
      continue;
    }

    // identifiers / keywords
    if (/[A-Za-z_]/.test(c)) {
      let j = i;
      while (j < n && /[A-Za-z0-9_]/.test(src[j])) j++;
      tokens.push({ type: 'name', value: src.slice(i, j) });
      i = j;
      continue;
    }

    throw new Error(`lua2json: unexpected character ${JSON.stringify(c)} at offset ${i}`);
  }

  tokens.push({ type: 'eof', value: null });
  return tokens;
}

class Parser {
  constructor(tokens) {
    this.t = tokens;
    this.p = 0;
  }
  peek(offset = 0) {
    return this.t[this.p + offset];
  }
  next() {
    return this.t[this.p++];
  }
  expect(value) {
    const tok = this.next();
    if (tok.value !== value) {
      throw new Error(`lua2json: expected ${value}, got ${JSON.stringify(tok.value)} (token ${this.p})`);
    }
    return tok;
  }
  isPunct(value, offset = 0) {
    const tok = this.peek(offset);
    return tok.type === 'punct' && tok.value === value;
  }

  // value := string | number | true | false | nil | table
  parseValue() {
    const tok = this.peek();
    if (tok.type === 'string' || tok.type === 'number') {
      this.next();
      // string concatenation is not data; fold it so we never silently drop text
      if (this.isPunct('..')) {
        let out = String(tok.value);
        while (this.isPunct('..')) {
          this.next();
          out += String(this.parseValue());
        }
        return out;
      }
      return tok.value;
    }
    if (tok.type === 'name') {
      if (tok.value === 'true') return (this.next(), true);
      if (tok.value === 'false') return (this.next(), false);
      if (tok.value === 'nil') return (this.next(), null);
      // a bare identifier reference (e.g. another local); keep it as a marker
      this.next();
      return { __ref: tok.value };
    }
    if (this.isPunct('{')) return this.parseTable();
    throw new Error(`lua2json: unexpected token ${JSON.stringify(tok.value)} while reading a value`);
  }

  // Returns an array when the table is purely positional, else an object.
  parseTable() {
    this.expect('{');
    const arr = [];
    const obj = {};
    let hasKeys = false;

    while (!this.isPunct('}')) {
      if (this.isPunct(',') || this.isPunct(';')) {
        this.next();
        continue;
      }

      // ["key"] = value
      if (this.isPunct('[')) {
        this.next();
        const key = this.parseValue();
        this.expect(']');
        this.expect('=');
        obj[String(key)] = this.parseValue();
        hasKeys = true;
        continue;
      }

      // key = value
      if (this.peek().type === 'name' && this.isPunct('=', 1)) {
        const key = this.next().value;
        this.expect('=');
        obj[key] = this.parseValue();
        hasKeys = true;
        continue;
      }

      // positional value
      arr.push(this.parseValue());
    }
    this.expect('}');

    if (hasKeys) {
      arr.forEach((value, index) => {
        obj[index + 1] = value;
      });
      return obj;
    }
    return arr;
  }
}

/**
 * Parse a `Module:Data/*` page body into { [entryName]: entryTable }.
 * Only `<root>["Name"] = { ... }` and `<root>.Name = { ... }` assignments are collected;
 * everything else (locals, functions, the trailing `return`) is skipped.
 */
export function parseDataModule(src, rootName = 'data') {
  const tokens = tokenize(src);
  const out = {};
  let i = 0;

  while (i < tokens.length && tokens[i].type !== 'eof') {
    const tok = tokens[i];
    const isRoot = tok.type === 'name' && tok.value === rootName;

    if (isRoot && tokens[i + 1]?.value === '[') {
      const keyTok = tokens[i + 2];
      if (keyTok?.type === 'string' && tokens[i + 3]?.value === ']' && tokens[i + 4]?.value === '=') {
        const parser = new Parser(tokens);
        parser.p = i + 5;
        out[keyTok.value] = parser.parseValue();
        i = parser.p;
        continue;
      }
    }
    i++;
  }

  return out;
}
