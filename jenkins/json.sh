#!/bin/bash

EXIT_CODE=0

#log message
echo "Starting json file checks"

# Run cookbook test
for data_bag in data_bags/*; do
	if [ -d $data_bag ]
		then
			for data_bag_item in $data_bag/*.json; do
				jsonlint -v $data_bag_item || {
					EXIT_CODE=1
				}
			done
	fi
done

if [ $EXIT_CODE -eq 0 ] 
	then
		echo "[SUCCESS] All json files Passed the test"
else
	echo "[ERROR] Failed to validate some json files"
fi

exit $EXIT_CODE
