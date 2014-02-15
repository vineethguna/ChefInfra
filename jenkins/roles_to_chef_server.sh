#!/bin/bash

EXIT_CODE=0

#Upload all data_bags to chef-server
for role in roles/*; do
	role_name = `basename $role`
	echo "Uploading role $role_name"
	knife upload $role --purge || {
    	echo "[ERROR] Failed to upload role '$role_name' ." >&2
        EXIT_CODE=1
        break
    }
done

if [ $EXIT_CODE -eq 0 ] 
	then
		echo "[SUCCESS] All roles are uploaded"
fi

exit $EXIT_CODE