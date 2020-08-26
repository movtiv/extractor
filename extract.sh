#!/bin/bash

#   Date : 2020-08-26 14:20:06 CST
# Author : movtiv

set -eu
set -o pipefail

DIR=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
cd "$DIR"

TARGET=input
COLLECT=output
mkdir -p "$COLLECT"

for f in "$TARGET"/*.zip; do
    filename="${f##*\/}"
    name="${filename%.*}"
    echo "$name"
    unzip "$f" -d temp
    for t in temp/*.torrent; do
        mv -v "$t" "$COLLECT"/"$name".torrent
    done
    rm -fr temp/
done
