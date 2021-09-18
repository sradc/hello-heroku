#!/usr/bin/env bash

# look for Python syntax errors or undefined names
flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
exit_code=$?
if [ $exit_code -ne 0 ]; then
     exit exit_code
fi

# exit-zero treats all errors as warnings. The GitHub editor is 127 chars wide
flake8 . --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics
exit_code=$?
if [ $exit_code -ne 0 ]; then
     exit exit_code
fi