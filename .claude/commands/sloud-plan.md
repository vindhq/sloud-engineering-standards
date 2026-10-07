Plan this change using Sloud Engineering Standards.

1. Read `standards/00-sdlc.md` and pick a **change tier** (T0–T3). Justify it.
2. Shape: restate the problem, acceptance criteria, blast radius (apps, packages, APIs, Bloom).
3. Spec: note any contract or Bloom invariant updates required first.
4. Plan: list **vertical slices** — each shippable with verification (tests / manual checks).
5. Call out risks, rollback, and what AI must not invent (especially Bloom tokens).

Output a concise plan the human can approve before Build. Do not write production code until they approve.
