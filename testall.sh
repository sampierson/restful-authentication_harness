#!/bin/bash

cd ~/Development/sampierson/ra

branches="testunit testunit-aasm testunit-haml testunit-assm-haml rspec rspec-haml rspec-aasm rspec-aasm-haml"

for test_framework in testunit rspec ; do
  for aasm in "" "-aasm" ; do
    for template in "" "-haml" ; do
      for email in "" "-email" ; do
        branch="$test_framework$aasm$template$email"
        echo "########## $branch ####################################################"
        git co $branch
        rake setup > /dev/null 2>&1
        rake testra
        rake reset > /dev/null 2>&1
      done
    done
  done
done
