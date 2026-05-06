# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 204, lane `ship`
- `stress`: `grammar width`, score 212, lane `ship`
- `edge`: `label quality`, score 182, lane `ship`
- `recovery`: `error locality`, score 153, lane `ship`
- `stale`: `token drift`, score 258, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
