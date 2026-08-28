#!/bin/bash
# Render a chapter as part of the website (navbar + sidebar) into docs/Notebook/
set -e
cd "$(dirname "$0")/.."
f="Notebook/${1#Notebook/}"
quarto render "$f" --execute
echo "Rendered $f -> docs/${f%.qmd}.html"
