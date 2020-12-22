#!/bin/sh

set -eu

if [ -d "karax_tables/" ]
then
rm -rf karax_tables
fi

git clone https://github.com/mikebelanger/karax_tables.git

cd karax_tables && git checkout simplify3
cd ..
# backend
nimble install -Y

# frontend
nimble frontend

nim c backend.nim
./backend