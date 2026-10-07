# 04 — API & Contracts

> When two sides must agree on a shape, that shape has one home. Don’t fork types in silence.

## Principles

1. **Contract before code** for cross-seam changes (FE↔BE, app↔app, package public API) — see SDLC Spec phase.
2. **One source of truth** for a shared shape (OpenAPI, shared types package, handoff doc, or contracts repo). Consumers update deliberately.
3. **Additive first.** Breaking changes need a migration note and a higher change tier (T2/T3).
4. **Errors are part of the contract** — status codes, error bodies, empty states.

## Frontend clients

- Use the existing data layer patterns in that app (RTK Query, fetch wrappers, etc.).
- Don’t invent a parallel API client for one screen.
- Loading / error / empty UI follows Bloom patterns (standard 08).

## Versioning

- Prefer explicit versioning or changelog notes when a shared package or public API changes.
- Document environment bases (e.g. `devapi`) in the consuming repo’s README / `.env.example`.

## Related

- SDLC: `00-sdlc.md`
- Security: `06-security.md`
