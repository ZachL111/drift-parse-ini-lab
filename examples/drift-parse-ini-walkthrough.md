# Drift Parse Ini Lab Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 204 | ship |
| stress | grammar width | 212 | ship |
| edge | label quality | 182 | ship |
| recovery | error locality | 153 | ship |
| stale | token drift | 258 | ship |

Start with `stale` and `recovery`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`stale` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
