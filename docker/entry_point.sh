#!/bin/sh

set -eu

# backend
nimble install
nimble c -r backend.nim

# frontend
nimble frontend

./backend