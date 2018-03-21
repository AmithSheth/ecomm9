require 'test_helper'

class ExchangeProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exchange_products_index_url
    assert_response :success
  end

end
