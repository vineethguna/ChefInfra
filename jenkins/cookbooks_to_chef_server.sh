#!/bin/bash

EXIT_CODE=0

#Upload all data_bags to chef-server

knife cookbook upload --all || {
	echo "[ERROR] Failed to upload some cookbooks ." >&2
    EXIT_CODE=1
}

if [ $EXIT_CODE -eq 0 ] 
	then
		echo "[SUCCESS] All cookbooks are uploaded"
fi

exit $EXIT_CODE