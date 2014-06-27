source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

# Postgres for ActiveRecord
gem 'pg'

# SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# jQuery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Nokogiri for parsing articles
gem 'nokogiri'

# Devise for authentication
gem 'devise'

# Typhoeus for API requests
gem 'typhoeus'

group :doc do
  # Bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  # Loads environment variables from .env into ENV in development and test
  gem 'dotenv-rails'
  # Rspec testing framework
  gem 'rspec-rails'
  # Automate generation of entity relationship diagram, use rake erd command
  gem 'rails-erd'
  # Factory girl for better testing
  gem 'factory_girl_rails'
  # User faker to generate more random tests
  gem 'faker'
end

group :production do
  # rails_12factor to work with heroku
  gem 'rails_12factor'
end