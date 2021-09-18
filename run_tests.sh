#!/usr/bin/env bash

printf "\n-- Running flake8, to look for syntax errors.\n"
bash tests/run_flake8.sh
echo  "--" exit code $?
if [ $? -ne 0 ]; then
     exit 1
fi

printf "\n\n-- Checking that '.py' files are Black formatted.\n"
bash tests/are_all_py_files_formatted.sh
echo "--" exit code $?
if [ $? -ne 0 ]; then
     exit 1
fi

printf "\n\n-- Running pytest tests.\n"
python -m pytest
echo  "--" exit code $?
if [ $? -ne 0 ]; then
     exit 1
fi

printf "\n\n-- All tests have passed, :D\n"
