#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
DIST_DIR="$ROOT_DIR/dist"
BUILD_DIR="$DIST_DIR/git-who-skill"

rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR/bin"
mkdir -p "$DIST_DIR"

cp "$ROOT_DIR/skillhub/git-who-skill/manifest.json" "$BUILD_DIR/manifest.json"
cp "$ROOT_DIR/skillhub/git-who-skill/README.md" "$BUILD_DIR/README.md"
cp "$ROOT_DIR/git-who" "$BUILD_DIR/bin/git-who"
chmod +x "$BUILD_DIR/bin/git-who"

(
  cd "$DIST_DIR"
  rm -f git-who-skill.zip
  zip -rq git-who-skill.zip git-who-skill
)

echo "Built: $DIST_DIR/git-who-skill.zip"
