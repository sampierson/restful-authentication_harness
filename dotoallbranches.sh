#!/bin/bash

cd ~/Development/sampierson/ra

for test_framework in testunit rspec ; do
  for aasm in "" "-aasm" ; do
     for template in "" "-haml" ; do
      for email in "" "-email" ; do
        branch="$test_framework$aasm$template$email"
        echo ############################## $branch"
        git co $branch
        eval $* || exit 1
      done
    done
  done
done
