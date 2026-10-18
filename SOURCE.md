# Sync source (DeskPlanner)

| Field | Value |
|-------|-------|
| Repository | https://github.com/bodrovphone/DeskPlanner |
| Branch | `alex_b/spanish-localization` |
| Git SHA | `1f30b1a6d7b9a4ca620437dfb5cebf2c3008ae43` |
| Synced on | 2026-10-18 |
| Paths copied | `client/src/locales/{en,de,es}/*.json` (24 namespaces per language) |
| App integration | [DeskPlanner PR #550](https://github.com/bodrovphone/DeskPlanner/pull/550) |

All 72 JSON files are byte-for-byte copies of the app commit above. English is
the source reference; German includes the current app fixes; Spanish is the new
UI locale. The rental namespace is included and remains separately loaded by the
app. This is a branch snapshot, not a claim that Spanish is released.

Spanish copy is AI-drafted. Native Spanish review is pending. Member emails and
invoice PDFs keep their existing language options; these catalogs do not add
Spanish email templates or Spanish PDF language selection.

Update this file whenever locales are refreshed from DeskPlanner.
