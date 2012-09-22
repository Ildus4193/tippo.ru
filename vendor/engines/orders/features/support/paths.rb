module NavigationHelpers
  module Refinery
    module Orders
      def path_to(page_name)
        case page_name
        when /the contact page/
          new_order_path

        when /the contact thank you page/
          thank_you_orders_path

        when /the contact create page/
          orders_path

        when /the list of orders/
          admin_orders_path

        when /the list of spam orders/
          spam_admin_orders_path
        else
          nil
        end
      end
    end
  end
end
