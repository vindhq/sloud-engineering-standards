# CLAUDE.md — Sloud Engineering Standards

Guidance for **Claude Code** in any Sloud repository. This file is the Claude
entry point; the full standards live in `standards/` and are shared with Cursor
via `AGENTS.md` / `.cursor/rules`. **Read `AGENTS.md` too.**

## What this repo is

`sloud-engineering-standards` is the single source of truth for how Sloud builds
software. Docs-first: value is in `standards/`. Tool configs point back to it.

## Start here

1. Read `AGENTS.md` and the `standards/` doc for the task.
2. In a **product repo**, also read that repo’s `README.md` / `AGENTS.md` / `CLAUDE.md`.
3. Match ceremony to the **change tier** in `standards/00-sdlc.md`.
4. UI work → `standards/08-bloom-design-system.md` → sibling `sloud-bloom`.

## Commands

- `/sloud-plan` — plan against SDLC + change tier
- `/sloud-review` — review against frontend, security, Bloom

## Standards index

- `standards/00-sdlc.md`
- `standards/01-naming-conventions.md`
- `standards/02-git-workflow.md`
- `standards/03-frontend.md`
- `standards/04-api-and-contracts.md`
- `standards/05-testing.md`
- `standards/06-security.md`
- `standards/07-ai-assisted-development.md`
- `standards/08-bloom-design-system.md`

## Non-negotiables

- Human owns every merge
- No secrets in prompts or code
- No inventing Bloom tokens / control heights / type roles
- No new dependencies without approval
- Don’t commit/push unless explicitly asked
