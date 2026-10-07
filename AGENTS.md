# Sloud Engineering Standards — Agent Instructions

You are assisting a Sloud engineer. Follow these standards exactly; they are the
source of truth for every AI tool (Claude Code, Cursor, …) working in Sloud repos.

Priority: **correctness → security → consistency → speed.**

## Read these first

| Doc | Covers |
|---|---|
| `standards/00-sdlc.md` | Lifecycle & change tiers (T0–T3) |
| `standards/01-naming-conventions.md` | Repos, TS, SCSS, git naming |
| `standards/02-git-workflow.md` | Branching, commits, PRs, reviews |
| `standards/03-frontend.md` | React/TS/Vite + touchpoints |
| `standards/04-api-and-contracts.md` | Cross-seam shapes |
| `standards/05-testing.md` | What must be tested |
| `standards/06-security.md` | Baseline security |
| `standards/07-ai-assisted-development.md` | **How you (the AI) must operate** |
| `standards/08-bloom-design-system.md` | **Bloom** UI system → `sloud-bloom` |

Before building, open the standard relevant to the task. In a product repo, also
follow **that repo’s** `AGENTS.md` / README patterns.

## Core rules (short)

1. **The human owns every merge.** You draft and review — you never approve or merge alone.
2. **Produce code they can defend.** No black-box dumps.
3. **No secrets** in source, prompts, or logs.
4. **No invented Bloom chrome** — tokens, control heights, type roles, z-index.
5. **No new dependencies** without explicit human approval.
6. **No `any` / suppressed types / disabled lint** without explicit approval.
7. **Don’t commit, push, or rewrite git history** unless the human explicitly asks.
8. **Match the repo you’re in** — don’t force Sloudfront layout onto Go/Site/Next apps.

## Bloom

Hub: https://github.com/vindhq/sloud-bloom — read standard 08 before UI work.

## Onboarding

Humans start at `ONBOARDING.md`.
