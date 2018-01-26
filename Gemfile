# rubocop:disable Style/FileName
source "https://rubygems.org"

ruby File.read(File.join(File.dirname(__FILE__), ".ruby-version")).strip

gem "rails", "~> 5.1"
gem "puma"
gem "pg", "~> 0.21"

gem "analytics-ruby", "~> 2.0.0", require: "segment/analytics"
gem "awesome_print"
gem "bitters", "~> 1.1.0"
gem "bourbon", "~> 4.2.7"
gem "bullet"
gem "database_cleaner"
gem "httparty"
gem "jquery-rails"
gem "neat", "~> 1.7.4"
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
  gem "simplecov"
  gem "stackprof"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "rack-mini-profiler"
  gem "spring"
  gem "spring-commands-rspec"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "rails-controller-testing"
  gem "rspec_junit_formatter", "0.2.2"
  gem "shoulda-matchers"
end
