# Sync source (DeskPlanner)

| Field | Value |
|-------|-------|
| Repository | https://github.com/bodrovphone/DeskPlanner |
| Branch | `alex_b/spanish-localization` |
| Git SHA | `3a05ef1462eb158a5a096e10493cfabbd0285171` |
| Synced on | 2026-10-18 |
| Paths copied | `client/src/locales/{en,de,es}/*.json` (24 namespaces per language) |
| App integration | [DeskPlanner PR #550](https://github.com/bodrovphone/DeskPlanner/pull/550) |

All 72 JSON files are byte-for-byte copies of the app commit above. English is
the source reference; German includes the current app fixes; Spanish is the new
UI locale. The rental namespace is included and remains separately loaded by the
app. This is a branch snapshot, not a claim that Spanish is released.

Spanish copy is AI-drafted. Alex will arrange native Spanish review later;
this does not block marking these PRs ready. App PR #550 also implements
Spanish member transactional emails, Stripe checkout labels and invoice PDFs.
Those templates and renderer live in DeskPlanner; this repository mirrors their
UI catalogs, not Edge template code. Email/PDF language settings remain separate.

Update this file whenever locales are refreshed from DeskPlanner.
