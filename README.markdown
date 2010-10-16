== Restful Authentication Test Harness

CURRENTLY BROKEN.

Back around Rails 2.3.2 I made some updates to restful-authentication, adding among other things a --haml option.  

To test all the permutations of the options -testunit/-rspec, -aasm, -haml, -email I created this test harness that uses a git branch for each permutation.  To run all the tests:

  git submodule init --update
  rake db:create db:migrate db:test:prepare
  ./testall.sh
