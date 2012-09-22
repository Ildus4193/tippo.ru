require File.expand_path('../orders', __FILE__)

module Refinery
  module Orders
    class Engine < Rails::Engine
      config.to_prepare do
        require 'filters_spam'
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "refinery_orders"
          plugin.directory = "orders"
          plugin.menu_match = /(refinery|admin)\/order(s|_settings)$/
          plugin.activity = {
            :class => OrderSetting,
            :title => 'name'
          }
        end
      end
    end
  end
end
