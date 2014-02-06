#!/bin/bash

EXIT_CODE = 0

echo "Starting tailor tests"

tailor --indentation-spaces off || EXIT_CODE=1

exit $EXIT_CODE
