if ENV["OPTIMIZELY_URL"]
  Rails.application.config.action_dispatch.default_headers.merge!(
    "X-Frame-Options" => "ALLOW-FROM app.optimizely.com"
  )
end
