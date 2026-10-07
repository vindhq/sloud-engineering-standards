#!/usr/bin/env bash
# Optional: copy standards + thin AI entrypoints into a product repo.
# Usage: ./scripts/sync.sh /path/to/product-repo
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DEST="${1:-}"

if [[ -z "$DEST" || ! -d "$DEST" ]]; then
  echo "Usage: $0 /path/to/product-repo" >&2
  exit 1
fi

mkdir -p "$DEST/vendored-standards"
rsync -a --delete "$ROOT/standards/" "$DEST/vendored-standards/standards/"
cp "$ROOT/VERSION" "$DEST/vendored-standards/VERSION"

echo "Synced standards $(cat "$ROOT/VERSION") → $DEST/vendored-standards/"
echo "Point the product AGENTS.md/CLAUDE.md at vendored-standards/ or keep linking the sibling hub."
