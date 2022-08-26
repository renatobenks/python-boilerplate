#!/usr/bin/,env bash

echo -e "\n⚙️  Testing the code into this python app...\n"
pytest src/ \
    --verbose \
    --exitfirst \
    --last-failed \
    --new-first \
    --failed-first \
