#!/bin/bash

cd ~/Development/sampierson/ra

branches="testunit testunit-aasm testunit-haml testunit-assm-haml rspec rspec-haml rspec-aasm rspec-aasm-haml"

for branch in $branches ; do
  echo "########## $branch ####################################################"
  git co $branch
  rake setup
  rake testra
  rake reset
done
