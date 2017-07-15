#!/bin/bash

rules="rules"
rules_d="/etc/udev/rules.d"

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

cd $rules
for file in *.rules; do
   cp $file $rules_d/$file
done

udevadm control --reload-rules && udevadm trigger
