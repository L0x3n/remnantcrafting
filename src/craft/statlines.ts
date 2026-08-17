// Turns the wiki's stat strings ("+9 - 12 Global Attack") into simulator lines.

import type { StatLine } from './engine.ts';

export interface ParsedLine {
  name: string;
  min: number;
  max: number;
  step: number;
  percent: boolean;
  raw: string;
}

const NUMBER = String.raw`-?\d+(?:[.,]\d+)?`;
const RANGE = new RegExp(String.raw`^\s*\+?\s*(${NUMBER})\s*(?:%\s*)?(?:-|–|—|to|till)\s*\+?\s*(${NUMBER})\s*(%?)\s*(.*)$`, 'i');
const SINGLE = new RegExp(String.raw`^\s*\+?\s*(${NUMBER})\s*(%?)\s*(.+)$`);

const toNumber = (raw: string) => Number(raw.replace(',', '.'));
const stepFor = (...values: number[]) => (values.some((value) => !Number.isInteger(value)) ? 0.1 : 1);
const tidy = (label: string) => label.replace(/^[\s:·-]+/, '').replace(/\s+/g, ' ').trim();

/** Returns null for lines that are prose rather than a rollable stat. */
export function parseStatLine(raw: string): ParsedLine | null {
  const text = raw.trim();
  if (!text) return null;

  const range = RANGE.exec(text);
  if (range) {
    const [, lo, hi, percent, label] = range;
    const min = toNumber(lo);
    const max = toNumber(hi);
    const name = tidy(label);
    if (!name || !Number.isFinite(min) || !Number.isFinite(max)) return null;
    return { name, min: Math.min(min, max), max: Math.max(min, max), step: stepFor(min, max), percent: percent === '%', raw: text };
  }

  const single = SINGLE.exec(text);
  if (single) {
    const [, value, percent, label] = single;
    const number = toNumber(value);
    const name = tidy(label);
    // "Buff lasts 10 minutes" parses as a number too, so require the number to lead.
    if (!name || !Number.isFinite(number) || !/^[+\d]/.test(text)) return null;
    return { name, min: number, max: number, step: stepFor(number), percent: percent === '%', raw: text };
  }

  return null;
}

export function parseStatLines(lines: string[]): ParsedLine[] {
  return lines.map(parseStatLine).filter((line): line is ParsedLine => line !== null);
}

export function toStatLine(parsed: ParsedLine, weight = 1): StatLine {
  return {
    name: parsed.percent ? `${parsed.name} (%)` : parsed.name,
    min: parsed.min,
    max: parsed.max,
    value: parsed.min,
    step: parsed.step,
    weight,
  };
}
