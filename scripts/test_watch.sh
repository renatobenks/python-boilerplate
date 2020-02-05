#!/usr/bin/env bash

echo "📺 Starting as watch mode the testing script..."

./scripts/test_development.sh

watchmedo shell-command src/ \
    --wait \
    --recursive \
    --patterns="*_test.py" \
    --ignore-patterns="*.py" \
    --command='./scripts/test_development.sh' \
