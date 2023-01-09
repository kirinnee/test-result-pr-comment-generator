#!/usr/bin/env bash
PATH="$(pwd)/node_modules/.bin:$PATH"
pls setup
pre-commit run -c ./config/.pre-commit-config.yaml --all
