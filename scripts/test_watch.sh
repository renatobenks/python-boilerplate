#!/usr/bin/env bash

clear

echo -e " 📺 Starting as watching mode the testing script...\n"
echo -e " 💻 Watching at src/ all .py files\n"

./scripts/test_development.sh

watchmedo shell-command src/ \
    --wait \
    --recursive \
    --patterns="src/*.py" \
    --command='clear && ./scripts/test_development.sh' \
