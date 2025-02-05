source "https://rubygems.org"

ruby "3.4.1"

gem "rails", "~> 8.0.1"
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "bcrypt", "~> 3.1.7
"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

gem "propshaft"
gem "puma", ">= 5.0"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cable"
gem "solid_cache"
gem "solid_queue"
gem "sqlite3", ">= 2.1"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "tailwindcss-rails"
gem "turbo-rails"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "better_errors"
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "database_consistency"
  gem "debug", platforms: %i[mri], require: "debug/prelude"
  gem "dotenv"
  gem "erb_lint", require: false
  gem "factory_bot_rails"
  gem "faker"
  gem "letter_opener", "~> 1.10"
  gem "pry-byebug"
  gem "rspec-rails"
  gem "rubocop-capybara", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rails-omakase", require: false
  gem "rubocop-rspec", require: false
  gem "rubocop-rspec_rails", require: false
  gem "rubycritic"
  gem "standard"
end

group :development do
  gem "rack-mini-profiler"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
