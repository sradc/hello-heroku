#!/usr/bin/env bash

# To check whether a file is formatted by Black,
# assert that `<file text> == <file text formatted with Black>`

if [ "$(cat $1)" != "$(black -q - < $1)" ]; then
  echo "File $1 is not black formatted."
  exit 1
fi
