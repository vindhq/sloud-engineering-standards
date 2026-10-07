# 00 — The Sloud SDLC

> The lifecycle every Sloud change follows, from idea to production. AI tools
> (Claude Code, Cursor, and others) are first-class participants — but a **human
> engineer owns every decision and every merge.**

We build a **merchant commerce platform** and sibling products. Speed matters;
**correctness, security, and consistency are non-negotiable.** This SDLC makes
the safe path the fast path. Ceremony matches risk (change tiers below).

Methodology note: adaptive depth and human gates follow Amazon’s **AI-DLC**
ideas. This document is Sloud’s own standard — not a copy of AWS workflow graphs.

---

## The phases

```
  ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐
  │ 1. SHAPE │──▶│ 2. SPEC  │──▶│ 3. PLAN  │──▶│ 4. BUILD │──▶│ 5. REVIEW│──▶│ 6. SHIP  │
  │  intent  │   │ contract │   │  slices  │   │   code   │   │ + verify │   │ + observe│
  └──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘
        └──────────────────────── learn & feed back ───────────────────────────┘
```

Not every change needs all six phases. Match ceremony to the **change tier**.

---

### 1. Shape — establish intent

**Goal:** agree on *what problem* and *why* before code.

- Clear acceptance criteria and driver (bug, feature, debt, design).
- Blast radius: which app(s), packages, APIs, Bloom invariants?
- Decide the **change tier** (below).

**AI use:** restate the requirement, list unknowns, map affected files. Draft only.

**Human gate:** you confirm the problem and tier.

### 2. Spec — pin the contract first

**Goal:** interfaces agreed before implementation.

- Cross-seam API or shared type changes: agree the shape first (types, OpenAPI, handoff doc).
- UI that changes Bloom **invariants**: update `sloud-bloom` first (see standard 08).
- Non-trivial architecture: write an ADR (`templates/adr.md`).

**AI use:** draft DTOs, ADRs, acceptance tests. You review against real consumers.

**Human gate:** you approve the contract / Bloom change.

### 3. Plan — vertical slices

**Goal:** small, shippable, testable slices.

- Prefer many small PRs over one large branch.
- Note verification per slice (tests, manual check).

**AI use:** `/sloud-plan` or equivalent. You approve the slice list.

### 4. Build — implement the slice

**Goal:** working, reviewed-quality code that matches existing patterns.

- Extend existing patterns; don’t invent frameworks.
- Tests for meaningful logic; typecheck and lint clean.
- Bloom: tokens and components only — no invented spacing/type/z-index.

**AI use:** pair on the slice. You understand every line you keep.

### 5. Review — human + automated

**Goal:** safe to merge.

- CI green (lint, types, tests as the repo defines).
- Human review required. AI is never the sole reviewer.
- `/sloud-review` may assist; it does not approve.

### 6. Ship — merge and watch

**Goal:** production gets the change; regressions are caught.

- Merge via PR to the repo’s integration branch (`main` / `develop` as that repo uses).
- Watch for broken UX, API errors, and Bloom drift in sibling mirrors when invariants change.

---

## Change tiers

| Tier | Examples | Ceremony |
|---|---|---|
| **T0** | Typos, comment-only, pure docs | Shape light → Build → Ship (PR still required) |
| **T1** | Localized UI/bugfix, no API/Bloom invariant change | Shape → Plan light → Build → Review → Ship |
| **T2** | New feature, API shape, shared package, Bloom invariant | Full Shape→Spec→Plan→Build→Review→Ship; ADR if architectural |
| **T3** | Auth, payments, multi-tenant isolation, breaking API, design-system breaking change | Full lifecycle + explicit rollback note + extra review |

When unsure, choose the higher tier.

---

## Related

- AI loop: `07-ai-assisted-development.md`
- Bloom: `08-bloom-design-system.md`
- Git/PRs: `02-git-workflow.md`
