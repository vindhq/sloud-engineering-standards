# Sloud Engineering Standards

**The single source of truth for how Sloud builds software** — SDLC, naming, git, frontend, API contracts, testing, security, AI-assisted development, and Bloom.

Inspired by Amazon’s AI-DLC methodology (adaptive ceremony, human gates, org rules as the brief). **Not a fork** of `awslabs/aidlc-workflows`. One standard, wired into Cursor and Claude Code so the rules are identical whichever tool you use.

> Sloud ships a **merchant commerce platform** (Sloudfront + touchpoints) and sibling products (Developer, Command, Go, Site). Priority order, always: **correctness → security → consistency → speed.**

---

## Start here

1. **Joining any Sloud project?** → [`ONBOARDING.md`](ONBOARDING.md)
2. **How we build?** → [`standards/00-sdlc.md`](standards/00-sdlc.md), then skim `standards/`
3. **Using AI?** → Already wired. Read [`standards/07-ai-assisted-development.md`](standards/07-ai-assisted-development.md)
4. **UI work?** → [`standards/08-bloom-design-system.md`](standards/08-bloom-design-system.md) → sibling [`sloud-bloom`](https://github.com/vindhq/sloud-bloom)

## The standards

| # | Doc | What it covers |
|---|---|---|
| 00 | [sdlc](standards/00-sdlc.md) | Lifecycle (Shape→Spec→Plan→Build→Review→Ship) & change tiers T0–T3 |
| 01 | [naming-conventions](standards/01-naming-conventions.md) | Repos, packages, TS, SCSS, wire format, git |
| 02 | [git-workflow](standards/02-git-workflow.md) | Branching, Conventional Commits, PRs, review gates |
| 03 | [frontend](standards/03-frontend.md) | React/TS/Vite monorepo + touchpoints (Sloudfront north star) |
| 04 | [api-and-contracts](standards/04-api-and-contracts.md) | API shapes, versioning, FE↔BE agreement |
| 05 | [testing](standards/05-testing.md) | Pyramid, what must be tested |
| 06 | [security](standards/06-security.md) | Baseline security (mandatory) |
| 07 | [ai-assisted-development](standards/07-ai-assisted-development.md) | How engineers and models use AI safely |
| 08 | [bloom-design-system](standards/08-bloom-design-system.md) | **Bloom** — UI grammar across every Sloud product |

## How this repo is wired to AI tools

`standards/` is authoritative. Tool configs are thin pointers — **no drift**:

| Tool | Entry point |
|---|---|
| Claude Code | [`CLAUDE.md`](CLAUDE.md) + [`.claude/commands/`](.claude/commands) |
| Cursor | [`AGENTS.md`](AGENTS.md) + [`.cursor/rules/`](.cursor/rules) |
| Shared (all) | [`AGENTS.md`](AGENTS.md) |

### Claude Code commands

- `/sloud-plan` — plan a change against the SDLC and change tier
- `/sloud-review` — review against frontend, security, and Bloom

## Adopting in a product repo

Point the product’s `AGENTS.md` / `CLAUDE.md` at this hub (sibling path + GitHub URL), the same way products point at Bloom. Optional later: `scripts/sync.sh` to vendor `standards/` into a service.

```text
Other/
├── sloud-engineering-standards/   ← you are here
├── sloud-bloom/                   ← Bloom Design System
├── sloud-business-web-application/
├── sloud-developer-web-application/
├── sloud-command-web-application/
├── sloud-go-web/
└── sloud-site-web/
```

## Templates

- [`templates/adr.md`](templates/adr.md) — Architecture Decision Record
- [`templates/pull-request.md`](templates/pull-request.md) — PR body checklist

## Version

See [`VERSION`](VERSION) and [`CHANGELOG.md`](CHANGELOG.md).
