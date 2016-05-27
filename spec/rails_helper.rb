# frozen_string_literal: true
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

  # https://github.com/rspec/rspec-rails/issues/396
  config.before(:example, type: :view) do
    view.lookup_context.view_paths.push "app/views/application"
  end

  # Stub out Glassfrog API calls
  config.before(:each) do
    glassfrog_response = {
      circles: "",
      roles: "",
      linked: { roles: "", circles: "", policies: "", people: "" }
    }
    allow_any_instance_of(Glassfrog).
      to receive(:request).and_return(glassfrog_response)
  end
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
