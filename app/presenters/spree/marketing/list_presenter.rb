module Spree
  module Marketing
    class ListPresenter

      VIEW_NAMES_HASH = {
        'AbandonedCart' => {
          
          description: Spree.t('marketing.lists.abandoned_cart.description')
        },
        'FavourableProducts' => {
         
          description: Spree.t('marketing.lists.favourable_products.description')
        },
        'LeastActiveUsers' => {
          
          description: Spree.t('marketing.lists.least_active.description')
        },
        'LeastZoneWiseOrders' => {
          
          description: Spree.t('marketing.lists.cold_zone.description')
        },
        'MostActiveUsers' => {
          
          description: Spree.t('marketing.lists.most_active.description')
        },
        'MostDiscountedOrders' => {
          
          description: Spree.t('marketing.lists.most_discounted_orders.description')
        },
        'MostSearchedKeywords' => {
          
          description: Spree.t('marketing.lists.most_searched_keywords.description')
        },
        'MostUsedPaymentMethods' => {
          
          description: Spree.t('marketing.lists.most_used_payment_methods.description')
        },
        'MostZoneWiseOrders' => {
          
          description: Spree.t('marketing.lists.hot_zone.description')
        },
        'NewUsers' => {
          
          description: Spree.t('marketing.lists.new_users.description')
        }
      }

      def initialize list
        @list = list
      end

      def sub_list_name
        @list.entity_name || @list.name
      end

      def description
        VIEW_NAMES_HASH[@list.class.to_s.demodulize][:description]
      end
    end
  end
end
