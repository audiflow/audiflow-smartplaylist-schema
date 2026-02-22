#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

mkdir -p docs

echo "Generating HTML documentation from schema.json..."
uv run --with json-schema-for-humans \
  generate-schema-doc \
  --config template_name=js \
  --config expand_buttons=true \
  schema.json docs/schema.html

echo "Done. Output: docs/schema.html"
