source 'https://rubygems.org'
ruby "2.2.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use sqlite3 as the database for Active Record - added to development env below
# gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Bootstrap for Easy CSS
gem 'bootstrap-sass', '~> 3.3.4'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Use jquery-turbolinks to get turborlinks to work with AJAX
gem 'jquery-turbolinks'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Use Paperclick for adding images
gem "paperclip", "~> 4.2"
gem "paperclip-dropbox", ">= 1.1.7"
# gem blue-imp-gallery used for car image gallery
gem 'blueimp-gallery'
# gem gon for accessing rails variables in javascript, used in car gallery uploaded
gem 'gon'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Figaro for putting information that you want parsed at runtime but not commit to a public git repository like passwords, etc.
gem "figaro"
# Use Unicorn as the app server
# gem 'unicorn'
# use dropzonejs-rails for multi-image uploads
gem 'dropzonejs-rails'
# use for user validations and admin validations
gem 'devise'
# user for role management with devise
gem 'cancancan', '~> 1.10'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# gem 'rvm1-capistrano3', require: false used to stabilize ruby and gems between produciton and development
gem 'rvm1-capistrano3', require: false
gem 'capistrano-bundler', '~> 1.1.2'

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'capistrano-rails', '~> 1.1.1'
end



group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  
  gem 'sqlite3'
end

