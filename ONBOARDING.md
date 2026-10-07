# Onboarding — Sloud Engineering

Front door for every engineer on every Sloud project.

## Golden rules

1. **You own every merge.** AI drafts; you verify and defend in review.
2. **Standards live here.** Product repos add product detail; they don’t invent org process.
3. **Bloom owns UI grammar.** Don’t invent type scales, control heights, or spacing — see standard 08.
4. **Correctness → security → consistency → speed.** Never invert that for convenience.
5. **No secrets in source, prompts, or logs.**

## Fleet map

| Repo | Role | Stack notes |
|---|---|---|
| `sloud-business-web-application` | **Sloudfront** — merchant dashboard + touchpoints | React, Vite, monorepo, `@sloud/ui` |
| `sloud-developer-web-application` | Developer portal | React, Vite; navy Bloom mirror |
| `sloud-command-web-application` | Platform ops console | React, Vite; navy / grayscale Bloom mirror |
| `sloud-go-web` | Consumer Go | Next.js; pink + dark Bloom mirror |
| `sloud-site-web` | Customer sites engine | Next.js; merchant brand (outside full Bloom) |
| `sloud-bloom` | **Bloom Design System** hub | Docs only |
| `sloud-engineering-standards` | **This repo** — how we build | Docs + AI tool wiring |

## Reading path by role

| Role | Read first |
|---|---|
| Any engineer | This file → `standards/00-sdlc.md` → `standards/07-ai-assisted-development.md` |
| Frontend / UI | `standards/03-frontend.md` → `standards/08-bloom-design-system.md` → [Bloom](https://github.com/vindhq/sloud-bloom) |
| API / backend touch | `standards/04-api-and-contracts.md` → `standards/06-security.md` |
| Using Claude Code | `CLAUDE.md` + `/sloud-plan` / `/sloud-review` |
| Using Cursor | `AGENTS.md` + `.cursor/rules/` |

## Clone layout (recommended)

Clone Sloud repos as siblings under one folder so relative links (`../sloud-bloom`, `../sloud-engineering-standards`) work.
