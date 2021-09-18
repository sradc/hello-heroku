#!/usr/bin/env bash

# Check that all `.py` files in the repo are black formatted.
find . -type f -name '*.py' -print0 | xargs -0 -n1 bash tests/is_black_formatted.sh
