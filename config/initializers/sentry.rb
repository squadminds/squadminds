Raven.configure do |config|
  config.dsn = 'https://0325461a93374dbf9a090cb3a82f016c:d5e2e045d7ed4bb582cfef4f4ba676f1@sentry.io/1416231'
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
end
