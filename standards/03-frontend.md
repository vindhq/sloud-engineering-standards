# 03 — Frontend

> Sloudfront (`sloud-business-web-application`) is the **north star** for React/TS patterns. Sibling apps mirror contracts; they don’t invent a second stack without a decision.

## Stack (Sloudfront)

- React + TypeScript
- Vite, lazy route chunks for touchpoints
- Redux Toolkit / RTK Query / saga where already used
- SCSS Modules + BEM (`@use` / `@forward` only — no `@import`)
- Shared packages: `@sloud/*` (source exports, no separate build step)

## Architecture habits

- Prefer extending existing screens/components over new abstractions.
- Extract to `@sloud/*` when a **second surface** already needs it; leave a thin host re-export when migrating.
- Touchpoints import host UI via `@dashboard/*` or `@host/*` until migrated; new code may prefer `@sloud/ui`.
- No Module Federation / remotes — one origin, one bundle graph.

## UI / Bloom

- All product UI follows **Bloom** — see `08-bloom-design-system.md` and https://github.com/vindhq/sloud-bloom
- Implementation: `@sloud/ui` in Sloudfront; other apps keep local token mirrors (no `file:` link unless publishing is intentional).
- Hard don’ts: inventing spacing, type metrics, control heights, or z-index integers.

## Sibling apps

- Developer / Command / Go: same grammar, product accent and density (standard 08).
- Customer sites (`sloud-site-web`): merchant brand tokens — outside full Bloom ops chrome.
- Match that product’s established patterns; don’t force Sloudfront folder layout onto Next.js apps.

## Type safety

- No `any` without explicit human approval.
- Don’t suppress type errors or disable lint to “make it pass.”

## Related

- Bloom: `08-bloom-design-system.md`
- Testing: `05-testing.md`
- Naming: `01-naming-conventions.md`
