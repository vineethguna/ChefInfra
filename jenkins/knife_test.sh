#!/bin/bash

EXIT_CODE=0

#log message
echo "Starting knife test for cookbooks"

# Run cookbook test
knife cookbook test -a -o cookbooks || {
	echo "[ERROR] Test failed for some cookbooks"
	EXIT_CODE=1	
}

if [ $EXIT_CODE -eq 0 ] 
	then
		echo "[SUCCESS] All Cookbooks Passed the test"
fi

#Exit Code to return at the end
exit $EXIT_CODE