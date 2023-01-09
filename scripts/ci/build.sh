#!/usr/bin/env bash
PATH="$(pwd)/node_modules/.bin:$PATH"
pls setup:node
pls build
