#!/bin/bash

echo "Starting Foodcritic tests on cookbooks"

EXIT_CODE=0

for cookbook in cookbooks; do
    foodcritic -f any --tags ~FC014 --tags ~FC015 --tags ~FC016 --tags ~FC017 -i  $cookbook || {
    echo "[ERROR] Not all $COOKBOOKS cookbooks passed foodcritic rules:"
    EXIT_CODE=1
  }
done

exit $EXIT_CODE