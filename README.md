# ohmydesk-l10n

Community-maintained UI translations for [OhMyDesk](https://ohmydesk.com) (coworking desk booking and space operations).

The application source lives in the main product repo: **[DeskPlanner](https://github.com/bodrovphone/DeskPlanner)**. This repository holds only translation JSON so contributors can improve copy without touching app code.

## What is here

```
locales/
  en/   # English source strings (reference)
  de/   # German mirror for QA and community edits
```

Each file is one **i18next namespace** (for example `common.json` → namespace `common`, `meetingRooms.json` → `meetingRooms`). Keys are nested JSON objects; components call `t('someKey', { ns: 'booking' })` or rely on the default namespace `common`.

**Rules of thumb:**

- Do not rename keys or namespaces without a coordinated change in DeskPlanner.
- Only change **string values** (and add missing keys that already exist in `en/` for the same namespace).
- Keep placeholders like `{{name}}` and HTML/markup patterns identical to English unless the target language needs a different order (document that in the PR).

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md). Workflow: fork → edit JSON → open a pull request. Maintainers merge after review and periodically sync approved strings back into DeskPlanner.

## Future locales

We plan to add folders such as `locales/bg/`, `locales/ro/`, `locales/es/`, and others. Start by copying all files from `locales/en/` into `locales/<code>/`, then translate values. Open a PR with the new folder and list the locale in the PR description.

## German QA

Native German speakers are especially welcome—**Mark** and **Fachwerk51**, your review of `locales/de/` helps us ship accurate operator-facing copy.

## Sync from DeskPlanner

The canonical app copies live under `client/src/locales/` in DeskPlanner. This repo’s `SOURCE.md` records the last synced commit. Optionally run `scripts/sync-from-deskplanner.sh` from a machine that has both checkouts side by side.

## Import into DeskPlanner

After strings are reviewed here, pull them into the app checkout:

```bash
cd DeskPlanner
L10N_DIR=../ohmydesk-l10n npm run locales:import-l10n
```

**Note:** This requires [DeskPlanner PR #182](https://github.com/bodrovphone/DeskPlanner/pull/182) to be merged (adds `npm run locales:import-l10n`). Until then, use the PR branch or wait for merge.
