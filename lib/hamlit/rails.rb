require "hamlit/rails/version"
require "hamlit"
require "rails"
require "hamlit/railtie"

module Hamlit
  module Rails
    class Engine < ::Rails::Engine
    end
    class Railtie < ::Rails::Railtie
      config.app_generators.template_engine :hamlit
    end
  end
end
