#!/usr/bin/env puma

lowlevel_error_handler do |e|
  Rollbar.critical(e)

  msg = "An error has occurred, and engineers have been informed. Please " \
          "reload the page. If you continue to have problems, contact us.\n"

  [500, {}, [msg]]
end

workers Integer(ENV["PUMA_WORKERS"] || 2)
threads Integer(ENV["MIN_THREADS"] || 1), Integer(ENV["MAX_THREADS"] || 16)

preload_app!

rackup DefaultRackup
port ENV["PORT"] || 5000
environment ENV["RACK_ENV"] || "production"
