# Load DSL and Setup Up Stages

require 'capistrano/setup'
require 'capistrano/deploy'

require 'capistrano/rails/migrations'
require 'capistrano/bundler'
require 'capistrano/rvm'
require 'capistrano/puma'

require 'capistrano/figaro_yml'
require 'capistrano/rails/assets'
require 'capistrano/faster_assets'
require 'capistrano/rails/collection'
require 'capistrano/ssh_doctor'

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }