# drift-parse-ini-lab

`drift-parse-ini-lab` keeps a focused Ruby implementation around parsers. The project goal is to implement a Ruby parsers project for ini event replay, using fixture event logs and golden state snapshots.

## Project Rationale

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Drift Parse Ini Lab Review Notes

For a quick review, compare `token drift` with `error locality` before reading the middle cases.

## Feature Set

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/drift-parse-ini-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `token drift` and `error locality`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `token drift`, `grammar width`, `label quality`, and `error locality`.

The Ruby code keeps the review rule close to the tests.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Next Improvements

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
