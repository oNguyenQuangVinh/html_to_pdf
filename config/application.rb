require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module HtmlToPdf
  class Application < Rails::Application
    config.load_defaults 5.1
    config.middleware.use PDFKit::Middleware
  end
end
