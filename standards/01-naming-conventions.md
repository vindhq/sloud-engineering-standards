# 01 — Naming Conventions

> One naming language across Sloud repos so humans and AI don’t invent a second dialect.

## Repositories

- Prefer `sloud-<product>-…` or clear product names already in the fleet (`sloud-business-web-application`, `sloud-go-web`, …).
- Design system hub: `sloud-bloom`.
- This standards hub: `sloud-engineering-standards`.

## Packages (Sloudfront monorepo)

- Scoped `@sloud/*` (`@sloud/ui`, `@sloud/utils`, `@sloud/touchpoint-core`, …).
- New shared code goes in an existing package when it fits; new packages need a clear second consumer.

## TypeScript / React

- Components: `PascalCase` files and exports matching the component (`Button/index.tsx`).
- Hooks: `useSomething`.
- Types: `IThing` / `Thing` — follow the repo you’re in; don’t mix styles in one PR.
- Prefer explicit names over abbreviations except established ones (`api`, `ui`, `id`).

## SCSS

- CSS Modules + **BEM**: one block per module; `&__element`, `&--modifier`.
- Tokens: `var(--space-*)`, `var(--color-*)`, `var(--control-height-*)`, `var(--z-*)` — never invent parallel names when Bloom has one.

## Wire / API

- Follow the existing API for that surface (don’t invent a second casing convention in one client).
- Shared FE↔BE shapes belong in a contract or shared types package when two sides must agree.

## Git

- Branch: `sabur/<type>/<short-kebab>` or team convention already used in that repo.
- Commits: Conventional Commits — `feat:`, `fix:`, `docs:`, `refactor:`, `chore:`, …
- PR titles match the primary commit intent.
