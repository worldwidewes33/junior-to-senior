#!/usr/bin/env bash
# Rebuilds the index, commits everything, and pushes to GitHub.
# GitHub Pages redeploys automatically within about a minute.
# Usage: ./publish.sh ["commit message"]
set -euo pipefail
cd "$(dirname "$0")"
./build-index.sh
git add -A
if git diff --cached --quiet; then
  echo "Nothing to publish."
  exit 0
fi
git commit -q -m "${1:-Publish lessons $(date '+%Y-%m-%d %H:%M')}"
git push -q
echo "Published: https://worldwidewes33.github.io/junior-to-senior/"
