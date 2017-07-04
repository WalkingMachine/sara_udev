#!/bin/bash

rules="rules"
rules_d="/etc/udev/rules.d"

cd $rules
for file in *.rules; do
  ln -s $file $rules_d/$file
done
