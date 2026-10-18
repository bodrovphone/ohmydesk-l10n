# Spanish UI guide and review checklist

Locale: `es`. Use neutral Spanish for Spain and Latin America, with informal
`tú` and clear, short sentences. Keep names entered by workspace operators as-is.

## Terms

| English | Spanish |
| --- | --- |
| member | miembro |
| desk | puesto |
| meeting room | sala de reuniones |
| private office | oficina privada |
| booking / reservation | reserva |
| plan | plan |
| day pass | pase de un día |
| flex pack | bono flexible |
| invoice | factura |
| lead | contacto potencial |
| space / workspace | espacio |
| task | tarea |
| settings | ajustes |
| upgrade subscription | mejorar plan |

## Review status

All 24 Spanish catalogs are AI drafts. No native Spanish review is claimed.
This PR is the review surface; structural validation does not prove translation
quality. Alex explicitly approved PR readiness with native review to follow later.
Keep the AI-draft status until that review is complete.

## What to review

1. Start with `common`, `onboarding`, `booking` and `members`: sign-up, language
   selection, booking details, errors, confirmation and the portal.
2. Check singular/plural forms, especially availability and balances. Preserve
   every `{{placeholder}}` token, React/HTML tag, URL and formatting marker.
3. Check terminology in plans, invoices, payments, offices and task screens.
   Spanish member transactional emails and PDFs are implemented in app PR #550;
   review the Edge templates and generated invoice there as well.
4. Check longer labels on narrow screens. App screenshots and browser coverage
   are linked from [DeskPlanner PR #550](https://github.com/bodrovphone/DeskPlanner/pull/550).
5. Open copy corrections here, then import them into DeskPlanner and rerun its
   catalog/runtime tests. Record reviewed namespaces and remaining gaps in the PR.

English remains authored in DeskPlanner. Keep namespace keys and JSON structure
aligned with that reference. The rental namespace is available for review, but
adding its catalog does not change the rental product rollout.
