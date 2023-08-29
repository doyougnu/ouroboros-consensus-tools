#!/usr/bin/env bash

set -e

echo "The custom options for formatting this repo are:"
stylish-haskell --defaults | diff - ./.stylish-haskell.yaml | grep -E "^>.*[[:alnum:]]" | grep -v "#"
printf "\nFormatting haskell files...\n"

export LC_ALL=C.UTF-8
fd --extension hs \
   --exec-batch stylish-haskell -c .stylish-haskell.yaml -i
