#!/usr/bin/env bash
# Copy operator UI locales from a local DeskPlanner checkout into this repo.
# Default DeskPlanner path: sibling directory ../deskplanner (relative to repo root).

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
L10N_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
DESKPLANNER="${DESKPLANNER:-${L10N_ROOT}/../deskplanner}"

SRC_EN="${DESKPLANNER}/client/src/locales/en"
SRC_DE="${DESKPLANNER}/client/src/locales/de"
DEST_EN="${L10N_ROOT}/locales/en"
DEST_DE="${L10N_ROOT}/locales/de"

if [[ ! -d "${SRC_EN}" ]]; then
  echo "error: missing ${SRC_EN}" >&2
  echo "Set DESKPLANNER to your DeskPlanner clone, e.g.:" >&2
  echo "  DESKPLANNER=~/pet_projects/deskplanner $0" >&2
  exit 1
fi

mkdir -p "${DEST_EN}" "${DEST_DE}"
cp "${SRC_EN}/"*.json "${DEST_EN}/"
cp "${SRC_DE}/"*.json "${DEST_DE}/"

SHA="$(git -C "${DESKPLANNER}" rev-parse HEAD)"
DATE="$(git -C "${DESKPLANNER}" log -1 --format=%cs HEAD)"
echo "Copied locales from DeskPlanner ${SHA} (${DATE})"
echo "Update SOURCE.md with this SHA and date before committing."
