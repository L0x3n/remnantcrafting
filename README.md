# remnantcrafting

Version 0.1 beta. A web-based database and theorycrafting site for Soul's Remnant. No login, no server, just static files.

Made by RapidX.

> This Wiki is a continual work-in-progress, and is maintained by the community.

## What this site does that wiki.gg does not

| Page | What you get |
|---|---|
| Material planner | Ask for "2× Copper Bow" and it breaks down to raw materials, in the order you have to craft them, with the profession levels required and where each material is farmed. Anything you already own is subtracted. |
| Craft simulator | Runs the crafting minigame a few thousand times on your item. Median, spread, chance of a perfect item, chance of losing it, a paired comparison between playstyles, and a curve of what extra turns are worth. |
| Card list | All 21 cards with the maths they actually perform, plus a worked example per rarity. Assumptions are labelled as assumptions. |
| Recipes | All 558 documented recipes, filterable by profession, craft level and ingredient. |

The database also covers items, monsters, maps (with which nodes are where) and skills.

## Getting started

```bash
npm install
npm run dev
```

The site runs at http://localhost:5280.

## Refreshing the game data

```bash
npm run fetch && npm run data && npm run images
```

- `fetch` pulls the wiki's Lua data modules into `data/raw/`
- `data` converts them to JSON in `public/data/`
- `images` mirrors sprites into `public/img/` (skipping whatever is already there)

## Tests

```bash
npm test
```

The tests cover the pure logic: the gap maths (including the wiki's own worked example), the round-up, the card effects, the material expansion and the stat parser. No DOM needed.

## Structure

```
tools/          import: fetching, the Lua parser, the JSON build, the card model
src/craft/      pure logic: engine (the minigame), planner (materials), strategy, statlines
src/pages/      one file per page
public/data/    generated JSON
public/img/     mirrored sprites
```

`src/craft/` knows nothing about the DOM or the network, which is why the simulator is testable and seeded deterministically.

## Deploying

The build output is a plain static folder, so any static host works.

```bash
npm run build   # writes dist/
```

`render.yaml` in the repo root describes the site for [Render](https://render.com): a static site that runs `npm ci && npm run build` and publishes `dist`. Point Render at this repository as a Blueprint and it deploys as-is.

## Licence and sources

Game data comes from [soulsremnant.wiki.gg](https://soulsremnant.wiki.gg/) and is used under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0). See `CREDITS.md`. This site is not affiliated with the game's developers or with wiki.gg.
