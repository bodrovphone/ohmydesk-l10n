# ohmydesk-l10n

Community-maintained UI translations for [OhMyDesk](https://ohmydesk.app) (coworking desk booking and space operations).

The application source lives in the main product repo: **[DeskPlanner](https://github.com/bodrovphone/DeskPlanner)**. This repository holds only translation JSON so contributors can improve copy without touching app code.

## What is here

```
locales/
  en/   # English source strings (reference)
  de/   # German mirror for QA and community edits
  el/   # Greek draft translations (Greece and Cyprus)
  es/   # Spanish UI copy — native review pending
```

Each file is one **i18next namespace** (for example `common.json` → namespace `common`, `meetingRooms.json` → `meetingRooms`). Keys are nested JSON objects; components call `t('someKey', { ns: 'booking' })` or rely on the default namespace `common`.

**Rules of thumb:**

- Do not rename keys or namespaces without a coordinated change in DeskPlanner.
- Only change **string values** (and add missing keys that already exist in `en/` for the same namespace).
- Keep placeholders like `{{name}}` and HTML/markup patterns identical to English unless the target language needs a different order (document that in the PR).

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md). Workflow: fork → edit JSON → open a pull request. Maintainers merge after review and periodically sync approved strings back into DeskPlanner.

## Future locales

We plan to add folders such as `locales/bg/`, `locales/ro/`, and others. Start by copying all files from `locales/en/` into `locales/<code>/`, then translate values. Open a PR with the new folder and list the locale in the PR description.

## Spanish QA

Spanish (`es`) covers all 24 current app namespaces. It uses neutral Spanish for
Spain and Latin America. Initial copy is AI-drafted and needs native review before
it can be described as reviewed. See [the Spanish guide](SPANISH.md) for terms
and review priorities. App integration: [DeskPlanner PR #550](https://github.com/bodrovphone/DeskPlanner/pull/550).

## German QA

Native German speakers are especially welcome—**Mark** and **Fachwerk51**, your review of `locales/de/` helps us ship accurate operator-facing copy.

## Sync from DeskPlanner

The canonical app copies live under `client/src/locales/` in DeskPlanner. This repo’s `SOURCE.md` records the last synced commit. Run the sync script against the intended app checkout to copy EN/DE/ES without
re-serializing the JSON, then update `SOURCE.md` with the exact app SHA:

```bash
DESKPLANNER=/path/to/deskplanner bash scripts/sync-from-deskplanner.sh
```

The script checks that all three source directories exist before copying. Use a
current checkout with Spanish support, not the older released EN/DE tree.

## Import into DeskPlanner

After strings are reviewed here, pull them into the app checkout:

```bash
cd DeskPlanner
L10N_DIR=../ohmydesk-l10n npm run locales:import-l10n
```

The app importer validates namespace filenames and JSON and skips English by
default. Run the app catalog tests after importing edits to check Spanish key,
placeholder and markup parity. Merge this translation PR and import any review
corrections into the app PR before claiming the two repositories are in sync.

## Greek

`locales/el/` contains the 24 Greek namespaces from DeskPlanner PR #579. Copy was
machine-drafted, then reviewed key by key with AI assistance; native review is
pending. Keep all
keys, interpolation and markup aligned with English. Greek covers web/mobile UI;
member email and PDF support lives in the app repository. See `GREEK.md`.
