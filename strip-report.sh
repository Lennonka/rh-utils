#!/bin/bash

SRC=$1

mv "$SRC" "$SRC.src"

cat "$SRC.src" | sed -E 's/(.\[4m|.\[0m|.\[33m|.\[31m|.\[34m)//g' >"$SRC"

#rm "$SRC.src"

echo "Stripped $SRC"
