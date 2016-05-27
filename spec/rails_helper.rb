ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../config/environment", __FILE__)
abort_message = "The Rails environment is running in production mode!"
abort(abort_message) if Rails.env.production?
require "spec_helper"
require "rspec/rails"
require "shoulda/matchers"

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.include FactoryGirl::Syntax::Methods

  # https://github.com/rspec/rspec-rails/issues/396
  config.before(:example, type: :view) do
    view.lookup_context.view_paths.push "app/views/application"
  end

  config.include FactoryGirl::Syntax::Methods
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
