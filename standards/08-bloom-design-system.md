# 08 — Bloom Design System

> **Bloom** is Sloud’s shared design system. Every Sloud product UI is built from its grammar. Products keep their own accents, layouts, and density; they do not invent a second type scale, control-height language, or spacing system.

Canonical hub (not this repo):

- Sibling: `../sloud-bloom/BLOOM.md`
- Remote: https://github.com/vindhq/sloud-bloom

---

## Layers

| Layer | Where |
|---|---|
| Design system hub / docs | `sloud-bloom` |
| Language (principles + foundations) | `sloud-bloom/docs/` |
| Canonical implementation | `@sloud/ui` in `sloud-business-web-application` |
| Product mirrors | Local `tokens.*` in Developer, Command, Go, … |

## Invariants (never invent locally)

- Type roles: UI (Poppins) / Display (Syne) / Reading (Source Serif 4)
- Space scale (`--space-*`)
- Control heights: 32 / 40 / 48 / field 56 — Button `sm` \| `md` \| `lg`
- Panels: `panel-surface` vs `panel-ops`
- Named `--z-*` only
- Color **roles** (bg / text / border / status / accent family)

## Variables (product-owned)

- Accent (merchant pink vs navy vs marketing brand)
- Layout / IA / density
- Light/dark defaults (Go dark mode is first-class)
- Product-only tokens (docs widths, cinema chrome, site merchant brand)

## Rules for engineers and AI

1. Read Bloom before inventing chrome.
2. Prefer `@sloud/ui` for new Sloudfront primitives; keep `@dashboard` / `@host` re-exports valid.
3. Sibling apps **mirror** contracts — do not `file:`-link `@sloud/ui` unless publishing is intentional.
4. Bloom **invariant** change: update `sloud-bloom` → `@sloud/ui` → product mirrors in the same effort.
5. Customer sites and the payment widget may sit outside full Bloom — document that choice; don’t pretend parity.

## Designers

Day-one path: https://github.com/vindhq/sloud-bloom/blob/main/docs/designers.md

## Related

- Frontend: `03-frontend.md`
- SDLC Spec phase: `00-sdlc.md`
