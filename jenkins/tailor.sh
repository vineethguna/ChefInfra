#!/bin/bash

EXIT_CODE = 0

echo "Starting tailor tests"

tailor --indentation-spaces off || EXIT_CODE=1

if [ $EXIT_CODE -eq 0 ] 
	then
		echo "[SUCCESS] All Cookbooks Passed the tailor tests"
fi

exit $EXIT_CODE
