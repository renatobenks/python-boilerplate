#!/usr/bin/env bash

echo -e "\n ⚙️ Testing the code into this python app...\n\n"
pytest src/ \
    --verbose \
    --exitfirst \
    --last-failed \
    --last-failed-no-failures none \
    --failed-first \
    --new-first \
    --cache_clear
