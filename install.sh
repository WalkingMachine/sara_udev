#!/bin/bash

# Get the current position of the script itself
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

rules="$SCRIPTPATH/rules"
rules_d="/etc/udev/rules.d"

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Remove the previous rules and keep a backup
mv $rules_d ".etc_udev_rules.bak"

# Link the new rules
ln -ds $rules $rules_d

udevadm control --reload-rules && udevadm trigger
echo "A softlink to $rules has been created at $rules_d. \nThe previous rules have been backed up at .etc_udev_rules.bak"