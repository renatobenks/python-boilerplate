#!/usr/bin/env bash

echo "📺 Starting as watch mode the running script..."

./scripts/run.sh

watchmedo shell-command src/ \
    --wait \
    --recursive \
    --patterns="*.py" \
    --ignore-patterns="*_test.py" \
    --command='./scripts/run.sh' \
