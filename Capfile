# Load DSL and Setup Up Stages

require 'capistrano/setup'
require 'capistrano/deploy'

require 'capistrano/rails/migrations'
require 'capistrano/bundler'
require 'capistrano/rbenv'
require 'capistrano/puma'

require 'capistrano/figaro_yml'

require 'capistrano/rails/collection'

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }