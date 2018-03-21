module Spree
   class ExchangeProductsController <  Spree::StoreController
    
    
    helper 'spree/products', 'spree/orders'

    respond_to :html

   

def show

  @exchange_product = Spree::Order.includes(line_items: [variant: [:option_values, :images, :product]]) 
end
end
end
     
