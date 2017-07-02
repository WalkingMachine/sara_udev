#!/bin/bash

rules="rules"
rules_d="/lib/udev/rules.d"

cd $rules
for file in *.rules; do
  ln $file $rules_d/$file
  # echo $file
done
