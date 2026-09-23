# Contributing translations

Thank you for helping localize OhMyDesk for coworking operators worldwide.

## Golden rules

1. **Never rename keys** — JSON property names must stay identical to `locales/en/` for the same file. The app references keys in TypeScript; renames break production builds.
2. **Only change string values** — punctuation, wording, tone, and grammar. Do not restructure objects unless you are adding a key that already exists in the English file for that namespace.
3. **Match JSON structure** — same nesting depth, same keys in every locale file that corresponds to an English file. Missing keys fall back to English at runtime but we prefer complete mirrors.
4. **One namespace file per domain** — e.g. `calendar.json`, `members.json`, `integrations.json`. Filename (without `.json`) is the i18next namespace name.

## Editing workflow

1. Fork `bodrovphone/ohmydesk-l10n`.
2. Edit files under `locales/<language>/`.
3. Validate JSON (no trailing commas, balanced braces). A quick check: `python3 -m json.tool locales/de/common.json > /dev/null`.
4. Open a pull request describing what you changed (screens or UI area helps reviewers).
5. Wait for review; maintainers may ask for wording tweaks to match product terminology (desk, flex plan, member, etc.).

## Interpolation and special strings

- Preserve `{{variable}}` segments exactly (i18next interpolation).
- If English uses `\n` for line breaks, keep them unless the translation naturally needs another break—do not remove intentional formatting.
- Brand name **OhMyDesk** is usually left as-is unless a locale guide says otherwise.

## Adding a new language

1. Create `locales/<code>/` using a two-letter or standard BCP-47 folder name (`bg`, `ro`, `es`, `pt-BR`, …).
2. Copy **all** `*.json` files from `locales/en/` into the new folder.
3. Translate values file by file; leave keys unchanged.
4. Open a PR titled like `feat: add Bulgarian (bg) locale`.
5. DeskPlanner must list the locale in `supportedLngs` and load bundles before the language appears in the app—that step is done in the main repo after strings are ready.

## What not to submit

- Key renames or namespace file renames without an app PR in DeskPlanner.
- Machine-translated bulk dumps without human review.
- Changes to English that are not intentional copy improvements (English is the source of truth for new features).

Questions: open a GitHub issue or comment on your PR.
