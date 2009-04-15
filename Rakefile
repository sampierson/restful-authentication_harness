# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'

task :setup do
  system 'script/generate authenticated user sessions --rspec --haml'
end

task :testra => [ "db:drop", "db:create", "db:migrate", "db:test:prepare" ] do
  system 'rake spec features'
end

task :reset do
  system 'git add .'
  system 'git reset --hard'
end
