# 06 — Security

> Baseline for every Sloud product. Stricter rules apply where money, PII, or admin power live.

## Non-negotiables

1. **No secrets in git, prompts, screenshots, or logs.** Use env vars / secret managers.
2. **Least privilege** — UI and API only expose what the role needs.
3. **Validate at the boundary** — never trust client-only checks for authz.
4. **Safe defaults** — fail closed on auth/session errors.
5. **Dependencies** — don’t add packages without approval; prefer the existing stack.

## Frontend

- Don’t store long-lived secrets in `localStorage` without an existing pattern and threat model.
- Sanitize / escape anything rendered from user or API HTML (e.g. rich text).
- Respect CSRF / cookie rules already established in the app.
- Admin / Command surfaces get extra care on impersonation and destructive acts.

## When AI helps

- Never paste production secrets, customer PII, or live credentials into a prompt.
- Treat model output as untrusted — especially auth, crypto, and payment code.
- Security review is human for T3 changes.

## Related

- Change tiers: `00-sdlc.md`
- AI: `07-ai-assisted-development.md`
