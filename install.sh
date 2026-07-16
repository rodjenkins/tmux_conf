#!/usr/bin/env bash
# Symlink this repo's tmux.conf into the home directory.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="${REPO_DIR}/tmux.conf"
DEST="${HOME}/.tmux.conf"

if [[ ! -f "$SRC" ]]; then
  echo "missing ${SRC}" >&2
  exit 1
fi

if [[ -e "$DEST" && ! -L "$DEST" ]]; then
  bak="${DEST}.bak.$(date +%Y%m%d%H%M%S)"
  echo "backing up existing ${DEST} → ${bak}"
  mv "$DEST" "$bak"
fi

ln -sfn "$SRC" "$DEST"
echo "linked ${DEST} → ${SRC}"
echo "reload: tmux source-file ~/.tmux.conf   (or prefix + r)"
