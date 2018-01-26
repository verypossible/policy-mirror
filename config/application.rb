require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PolicyMirror
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.application_host = ENV.fetch('APPLICATION_HOST')
    config.middleware.insert_after 0, Rack::CanonicalHost, config.application_host if Rails.env.production?

    config.autoload_paths += Dir["#{config.root}/lib/**/"]
  end
end
