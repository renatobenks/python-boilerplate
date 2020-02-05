#!/usr/bin/env bash

echo -e "\n 👮 Scanning for open security issues into unsecurity code from this app... \n\n"
bandit -v -r --ini .bandit -n 3 -ll -iii
