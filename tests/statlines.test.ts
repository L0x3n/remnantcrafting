import assert from 'node:assert/strict';
import { test } from 'node:test';
import { parseStatLine, parseStatLines, toStatLine } from '../src/craft/statlines.ts';

test('a range line yields min and max', () => {
  assert.deepEqual(parseStatLine('+9 - 12 Global Attack'), {
    name: 'Global Attack',
    min: 9,
    max: 12,
    step: 1,
    percent: false,
    raw: '+9 - 12 Global Attack',
  });
});

test('a fixed line has min equal to max', () => {
  const line = parseStatLine('+5 Global Attack');
  assert.equal(line?.min, 5);
  assert.equal(line?.max, 5);
});

test('percent lines are flagged', () => {
  const line = parseStatLine('+24% Speed');
  assert.equal(line?.percent, true);
  assert.equal(line?.name, 'Speed');
  assert.equal(toStatLine(line!).name, 'Speed (%)');
});

test('decimal ranges get a 0.1 step', () => {
  const line = parseStatLine('+1.5 - 3.0 Attack Speed');
  assert.equal(line?.step, 0.1);
  assert.equal(line?.max, 3);
});

test('prose lines are ignored', () => {
  assert.equal(parseStatLine('Buff lasts 10 minutes'), null);
  assert.equal(parseStatLine(''), null);
  assert.equal(parseStatLine('   '), null);
});

test('a mixed stat block keeps only the rollable lines', () => {
  const lines = parseStatLines(['+24% Speed', 'Buff lasts 10 minutes', '+2 - 8 Defense']);
  assert.deepEqual(lines.map((line) => line.name), ['Speed', 'Defense']);
});

test('a reversed range is normalised', () => {
  const line = parseStatLine('+12 - 9 Global Attack');
  assert.equal(line?.min, 9);
  assert.equal(line?.max, 12);
});

test('a simulator line starts at the floor of its range', () => {
  const line = toStatLine(parseStatLine('+9 - 12 Global Attack')!);
  assert.equal(line.value, 9);
  assert.equal(line.weight, 1);
});
