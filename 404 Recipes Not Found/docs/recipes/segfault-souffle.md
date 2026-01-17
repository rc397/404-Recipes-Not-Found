---
layout: default
title: "Segfault Soufflé"
---

# Segfault Soufflé

## Summary
A soufflé that crashes right after rising.

## Ingredients
- 3 eggs (uninitialized)
- 1 cup sugar (overflowing)
- 1 tsp vanilla (deprecated)

## Steps
1. Preheat oven to `375°F`.
2. Whisk eggs until they *almost* form stable pointers.
3. Fold in sugar until the mixture hits an **unexpected memory boundary**.
4. Bake until it rises, then watch it instantly collapse.

## Error
```
SIGSEGV: invalid access in function `souffle_rise()`
```

## Stack Trace
```
#0  0x0000deadbeef in souffle_rise()
#1  0x0000cafebabe in bake_dessert()
#2  0x0000feedface in main()
```

## Fix Attempt
- Added more sugar (made it crash faster)
- Wrapped the pan in foil (hid the crash, did not fix it)

## Postmortem
- Don’t mix “just one more tweak” with heat and deadlines.
- Add checks (and timers) before you ship desserts.

## Tags
- #dessert
- #crash
- #retro
