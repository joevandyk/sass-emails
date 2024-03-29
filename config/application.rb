require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "action_mailer/railtie"
require "rails/test_unit/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups(:assets => %w(development test)))

module SassEmail
  class Application < Rails::Application
    config.action_controller.asset_host = "assets.example.com"
    config.action_mailer.asset_host     = "http://assets.example.com"
    config.action_mailer.raise_delivery_errors = true
    config.active_support.deprecation = :log
    config.assets.compress = false
    config.assets.enabled = true
    config.assets.version = '1.0'
    config.cache_classes = false
    config.encoding = "utf-8"
    config.whiny_nils = true
    routes.default_url_options[:host] = "www.example.com"
  end
end
