# 02 — Git Workflow

> Small PRs, clear history, human review. AI never merges.

## Branches

- Default integration branch is whatever that repo uses (`main` or `develop`).
- Feature work on a topic branch; don’t commit unrelated WIP onto a standards/docs PR.
- Keep Bloom / Engineering Standards doc PRs off long-lived product feature branches when possible (cherry-pick or separate PR to `main`).

## Commits

- Conventional Commits (`feat:`, `fix:`, `docs:`, `refactor:`, `test:`, `chore:`).
- Subject focuses on **why**; body only when needed.
- Never commit secrets (`.env`, keys, tokens).
- Don’t rewrite published history unless explicitly asked by the repo owner.

## Pull requests

- One concern per PR when practical.
- Description: summary + test plan (use `templates/pull-request.md`).
- CI must be green before merge (lint / types / tests as the repo defines).
- **At least one human review** for T1+; AI review assists only.
- Prefer merge commits or the repo’s established strategy — don’t invent a new one mid-fleet.

## Review bar

- Correctness and security first.
- Matches existing patterns in that repo.
- Bloom: no invented spacing, type metrics, control heights, or z-index.
- No unexplained `any`, suppressed lint, or skipped type errors.

## Related

- Change tiers: `00-sdlc.md`
- Naming: `01-naming-conventions.md`
