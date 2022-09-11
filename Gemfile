source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem "rack-cors"

# A general HTTP(s) client
gem 'excon', "~> 0.92"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]

  # A Ruby static code analyzer and formatter, based on the community Ruby style guide [https://github.com/rubocop/rubocop]
  gem 'rubocop', '~> 1.36', require: false

  # An extension of RuboCop focused on code performance checks [https://github.com/rubocop/rubocop-performance]
  gem 'rubocop-performance', require: false

  # A RuboCop extension focused on enforcing Rails best practices and coding conventions [https://github.com/rubocop/rubocop-rails]
  gem 'rubocop-rails', require: false

  # Code style checking for Minitest files [https://github.com/rubocop/rubocop-minitest]
  gem 'rubocop-minitest', require: false

  # Pry is a runtime developer console and IRB alternative with powerful introspection capabilities [https://github.com/pry/pry]
  gem 'pry', '~> 0.13.1'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # A code coverage analysis tool for Ruby.
  gem 'simplecov', require: false
end