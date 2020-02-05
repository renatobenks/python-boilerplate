#!/usr/bin/env bash

echo "📺 Starting the running app on watch mode..."

./scripts/run.sh

watchmedo shell-command src/ \
    --wait \
    --recursive \
    --patterns="*.py" \
    --ignore-patterns="*_test.py" \
    --command='./scripts/run.sh' \
