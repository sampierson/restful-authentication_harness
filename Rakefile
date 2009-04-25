# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'

task :setup do
  system 'script/generate authenticated user sessions --aasm'
  # enable line: config.active_record.observers = :user_observer
  system 'echo -e "g/#SAM /s///\n w\n" | ed config/environment.rb'
  # remove line: map.resources :users   (we already have a better one in there)
  system 'echo -e "/map\.resources :users$/d\n w\n" | ed config/routes.rb'
end

task :testra => [ "db:drop", "db:create", "db:migrate", "db:test:prepare", :test ]

task :reset do
  system 'git add .'
  system 'git reset --hard'
end
