source 'https://rubygems.org'

# Core gems
gem 'rails', '4.2.5'
gem 'pg', '~> 0.15'

# Assets Processors
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jbuilder'

# Assets
gem 'jquery-rails'
gem 'bootstrap-sass', '~> 3.3'

# Serializer
gem 'active_model_serializers'

# Respond_to JSON
gem 'responders'

#Pagination
gem 'kaminari'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# WebServer
gem 'unicorn', '~> 5.0', '>= 5.0.1'
gem 'net-ssh'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  gem 'capistrano', '~> 3.4.0'
  gem 'capistrano-rvm'
  gem 'capistrano-rails'
  gem 'capistrano-sidekiq'
  gem 'capistrano-passenger'
  gem 'capistrano-figaro'
  gem 'capistrano-safe-deploy-to'
  gem 'capistrano-bundler'
  gem 'capistrano3-unicorn'


  gem 'pry', '~> 0.10.3'
  gem 'web-console', '~> 2.0'
  gem 'better_errors'
  gem 'awesome_print'
  gem 'foreman'
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
end