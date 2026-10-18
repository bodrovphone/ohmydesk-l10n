#!/usr/bin/env bash
# Copy operator UI locales from a local DeskPlanner checkout into this repo.
# Default DeskPlanner path: sibling directory ../deskplanner (relative to repo root).

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
L10N_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
DESKPLANNER="${DESKPLANNER:-${L10N_ROOT}/../deskplanner}"

# Keep the shipped app locales together. Validate every source before writing
# anything so an older checkout cannot leave a half-refreshed mirror.
LANGUAGES=(en de es)
for language in "${LANGUAGES[@]}"; do
  source_dir="${DESKPLANNER}/client/src/locales/${language}"
  if [[ ! -d "${source_dir}" ]]; then
    echo "error: missing ${source_dir}" >&2
    echo "Set DESKPLANNER to a checkout with all shipped locales (en/de/es)." >&2
    exit 1
  fi
done

for language in "${LANGUAGES[@]}"; do
  mkdir -p "${L10N_ROOT}/locales/${language}"
  cp "${DESKPLANNER}/client/src/locales/${language}/"*.json "${L10N_ROOT}/locales/${language}/"
done

SHA="$(git -C "${DESKPLANNER}" rev-parse HEAD)"
DATE="$(git -C "${DESKPLANNER}" log -1 --format=%cs HEAD)"
echo "Copied locales from DeskPlanner ${SHA} (${DATE})"
echo "Update SOURCE.md with this SHA and date before committing."
