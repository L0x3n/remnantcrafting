# remnantcrafting

Version 0.1 beta. En webbaserad databas och teorycrafting-sida för Soul's Remnant. Ingen inloggning, ingen server: bara statiska filer.

Made by RapidX.

> This Wiki is a continual work-in-progress, and is maintained by the community.

## Vad sidan gör som wiki.gg inte gör

| Sida | Vad du får |
|---|---|
| Materialplanerare | Väljer du "2× Copper Bow" bryts allt ner till råmaterial, i rätt craft-ordning, med profession-nivåerna som krävs och var varje material farmas. Materia du redan har dras av. |
| Craft-simulator | Kör crafting-minispelet några tusen gånger på ditt item. Median, spridning, chans till perfekt item, chans att förlora det, jämförelse mellan spelstilar och en kurva över vad extra turer är värda. |
| Kortlista | Alla 21 kort med den matematik de faktiskt utför, plus ett räknat exempel per sällsynthet. Antaganden är märkta som antaganden. |
| Recept | Alla 558 dokumenterade recept, filtrerbara på profession, craftnivå och ingående material. |

Databasen innehåller också föremål, monster, kartor (med vilka noder som finns var) och skills.

## Kom igång

```bash
npm install
npm run dev
```

Sidan ligger på http://localhost:5280.

## Uppdatera speldatan

```bash
npm run fetch && npm run data && npm run images
```

- `fetch` hämtar wikins Lua-datamoduler till `data/raw/`
- `data` konverterar dem till JSON i `public/data/`
- `images` speglar sprites till `public/img/` (hoppar över det som redan finns)

## Tester

```bash
npm test
```

Testerna täcker den rena logiken: gap-matematiken (inklusive wikins eget räkneexempel), avrundningen uppåt, korteffekterna, materialexpansionen och stat-parsern. Ingen DOM behövs.

## Struktur

```
tools/          import: hämtning, Lua-parser, JSON-bygge, kortmodell
src/craft/      ren logik: engine (minispelet), planner (material), strategy, statlines
src/pages/      en fil per sida
public/data/    genererad JSON
public/img/     speglade sprites
```

`src/craft/` känner varken till DOM eller nätverk, vilket är varför simulatorn går att testa och seeda deterministiskt.

## Licens och källor

Speldatan kommer från [soulsremnant.wiki.gg](https://soulsremnant.wiki.gg/) och används under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0). Se `CREDITS.md`. Sidan är inte knuten till spelets utvecklare eller till wiki.gg.
