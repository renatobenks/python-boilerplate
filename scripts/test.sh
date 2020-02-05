#!/usr/bin/env bash

echo -e "\n ⚙️✅ Testing and linting the code into this python app...\n\n"
pytest --cache-clear --pylama ./src
