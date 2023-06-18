source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'
gem 'importmap-rails'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.5'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'sqlite3', '~> 1.4'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'guard', '2.18.0'
  gem 'guard-minitest', '2.4.6'
  gem 'minitest', '5.15.0'
  gem 'minitest-reporters', '1.5.0'
  gem 'rails-controller-testing', '1.0.5'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'pg', '1.3.5'
end
