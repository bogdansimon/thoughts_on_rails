# frozen_string_literal: true

allowed_origin = ENV.fetch('ALLOWED_ORIGIN')

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins allowed_origin

    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head],
             credentials: false
  end
end
