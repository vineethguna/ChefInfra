#!/bin/bash

EXIT_CODE=0

#Upload all data_bags to chef-server
for data_bag in data_bags/*; do
	data_bag_name=`basename $data_bag`
	echo "Uploading databag $data_bag_name"
	if [[ "$data_bag_name" != "README.md" ]]; then
		knife upload $data_bag_name --purge || {
    		echo "[ERROR] Failed to sync data bag '$data_bag_name' ." >&2
        	EXIT_CODE=1
        	break
    	}
    fi
done

if [ $EXIT_CODE -eq 0 ] 
	then
		echo "[SUCCESS] All data_bags are uploaded"
fi

exit $EXIT_CODE