source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

#GEMFILE FROM BOOK
group :development, :test do
  # rspec-rails includes RSpec itself in a wrapper to add some extra Rails-specific features
  gem "rspec-rails", "~> 2.12.2"
  # factory_girl_rails replaces Rails’ default fixtures for feeding test data to the test suite with much more preferable factories.
  gem "factory_girl_rails", "~> 4.2.0"
  # guard-rspec watches your application and tests and runs specs for you automatically when it detects changes.
  gem "guard-rspec", "~> 2.4.0"
end

group :test do
  # faker generates names, email addresses, and other placeholders for factories
  gem "faker", "~> 1.1.2"
  # capybara makes it easy to programatically simulate your users’ interactions with your application.
  gem "capybara", "~> 2.0.2"
  # database_cleaner helps make sure each spec run in RSpec begins with a clean slate, by–you guessed it–cleaning data from the test database.
  gem "database_cleaner", "~> 0.9.1"
  # launchy does one thing, but does it well: It opens your default web browser on demand to show you what your application is rendering
  gem "launchy", "~> 2.2.0"
end
