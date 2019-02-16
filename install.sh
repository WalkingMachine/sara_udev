#!/bin/bash

rules="rules"
rules_d="/etc/udev/rules.d"

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Remove the previous rules
mv $rules_d ".etc_udev_rules.bak"

# Link the new rules
ln -sd $rules $rules_d

udevadm control --reload-rules && udevadm trigger
