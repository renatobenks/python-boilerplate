#!/usr/bin/env bash

echo -e " 📺 Starting as watch mode the running script...\n"
echo -e " 💻 Watching at src/ all .py files, excepting for test files (*_test.py)\n"

./scripts/run.sh

watchmedo shell-command src/ \
    --wait \
    --recursive \
    --patterns="*.py" \
    --ignore-patterns="*_test.py" \
    --command='./scripts/run.sh' \
