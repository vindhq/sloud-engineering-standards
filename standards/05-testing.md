# 05 — Testing

> Test what protects money, trust, and regressions. Don’t theatre-test every line.

## Pyramid

| Layer | Prefer for |
|---|---|
| Unit | Pure logic, validators, reducers, formatters |
| Integration | API slices, storage adapters, critical hooks |
| Component / UI | Meaningful interaction paths (not snapshot spam) |
| Manual / exploratory | Visual Bloom checks, flows CI can’t see |

## Must cover

- Payment, auth, session, and permission-sensitive paths when touched.
- Shared package logic with more than one consumer.
- Regressions that already burned you once (add a test when you fix them).

## Practices

- Tests run in CI for the repo that owns the code.
- Prefer the repo’s existing runner (Vitest, Jest, etc.) — don’t add a second framework.
- AI-generated tests are drafts: assert behavior, not implementation trivia.
- Flaky tests get fixed or deleted — they don’t get ignored forever.

## Related

- SDLC Build/Review: `00-sdlc.md`
- Frontend: `03-frontend.md`
