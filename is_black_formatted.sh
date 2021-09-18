#!/usr/bin/env bash

# Checks whether a file is formatted by Black.
# Does this by asserting that `<file text> == <black formatted text>`
if [ "$(cat $1)" != "$(black -q - < $1)" ]; then
  echo "File $1 is not black formatted."
  exit 1
fi
