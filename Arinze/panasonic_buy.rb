require_relative 'trainingrite_retail_catalogue'

class Purchase

  include Websitelogin
  

  def order_online
  
  electronics
  search_item
  click_go
  add_cart
  product_quantity
  proceed_checkout
  customer_name
  customer_Address
  city_name
  state_name
  zip_detail
  text_phone
  payment_choice
  account_number
  ccv_number
  expiry_date
  collector_name
  recipient_address
  shipping_city
  shipping_state
  shipping_zip
  shipping_phone
  order_button
  verify_success
  close_browser

  end
 
end
 


 