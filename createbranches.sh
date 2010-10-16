#!/bin/bash

for test_framework in testunit rspec ; do
  for aasm in "" "-aasm" ; do
     for template in "" "-haml" ; do
      for email in "" "-email" ; do
        branch="$test_framework$aasm$template$email"
        echo ############################## $branch"
        git co -b $branch --track origin/$branch
      done
    done
  done
done
