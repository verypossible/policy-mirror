# rubocop:disable Style/FileName
source "https://rubygems.org"

ruby File.read(File.join(File.dirname(__FILE__), ".ruby-version")).strip

gem "rails", "~> 4.2.6"
gem "puma"
gem "pg"

gem "analytics-ruby", "~> 2.0.0", require: "segment/analytics"
gem "awesome_print"
gem "bitters"
gem "bourbon", "~> 4.2.7"
gem "bullet"
gem "database_cleaner"
gem "httparty"
gem "jquery-rails"
gem "neat"
gem "rack-canonical-host"
gem "redcarpet"
gem "rollbar"
gem "sass-rails"
gem "slim-rails"
gem "slim_lint"
gem "uglifier"

group :production do
  gem "lograge"
  gem "newrelic_rpm"
  gem "rack-timeout"
  gem "rails_12factor"
end

group :development, :test do
  gem "byebug"
  gem "capybara"
  gem "derailed"
  gem "dotenv-rails"
  gem "faker"
  gem "pry"
  gem "pry-byebug"
  gem "pry-rails"
  gem "pry-remote"
  gem "rack-mini-profiler"
  gem "rspec-rails"
  gem "stackprof"
end

group :development do
  gem "foreman"
  gem "refills"
  gem "simplecov", require: false
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console", "~> 2.0"
end

group :test do
  gem "rspec_junit_formatter", "0.2.2"
  gem "shoulda-matchers"
end
