# Sync source (DeskPlanner)

| Field | Value |
|-------|-------|
| Repository | https://github.com/bodrovphone/DeskPlanner |
| Branch | `alex_b/greek-localization` |
| Git SHA | `b500916da06729e82f89c40cba0204c44dc01165` |
| Synced on | 2026-10-21 |
| Paths copied | `client/src/locales/{en,de,es,el}/*.json` (24 namespaces per language) |
| App integration | [DeskPlanner PR #579](https://github.com/bodrovphone/DeskPlanner/pull/579) |

All 96 JSON catalogs are byte-for-byte copies of the app commit above. English
is the source reference. This branch preserves the open Spanish translation work
(PR #3) and adds Greek; it is based on that branch to avoid duplicating its PR.

Greek catalogs were machine-drafted, then reviewed key by key with AI assistance
(2,842 of 5,634 strings corrected). Native Greek review remains pending. App PR #579 also implements Greek member emails,
checkout labels and invoice PDFs. Those templates live in DeskPlanner. This
repository contains only translation catalogs and their contributor workflow.

This is a feature-branch snapshot, not a production-release claim.
