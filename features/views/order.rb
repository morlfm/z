class Order < Appium::Driver

   def initialize

    @products= 'see-products'
    @search= '//android.view.ViewGroup[@content-desc="open-search"]/android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText'
    @search_input= '//android.widget.EditText[@content-desc="search-input"]'
    @tap_element= '(//android.view.ViewGroup[@content-desc="default-product-card"])[1]'
    @add_items='add-6-units-button'
    @add_to_checkout= 'add-to-checkout'
    @place_order= 'place-an-order'  #versacola
    @payment_status= 'checkout-action-button'     #@@@@@@@@@  erro de end
    @payment_method= 'payment-method-CREDIT_CARD'
    @finalize_order= 'checkout-payment-action-button'

   end
   def place_order_incorrect
     find_element(accessibility_id: @products).click
     banner= find_element(accessibility_id: 'modal-close').displayed?
    close_banner(banner)
    find_element(xpath: @search).click
    find_element(xpath: @search_input).send_keys 'Whisky'
    find_element(xpath: @tap_element).click
    find_element(accessibility_id: @add_items).click
    find_element(accessibility_id: @add_to_checkout).click
    find_element(accessibility_id: @place_order).click
   end


   def place_order_correct
     find_element(accessibility_id: @products).click
     banner= find_element(accessibility_id: 'modal-close').displayed?
    close_banner(banner)
    find_element(xpath: @search).click
    find_element(xpath: @search_input).send_keys 'Whisky'
    find_element(xpath: @tap_element).click
    find_element(accessibility_id: @add_items).click
    find_element(accessibility_id: @add_to_checkout).click
    find_element(accessibility_id: @place_order).click
    swipe
    find_element(accessibility_id: @payment_status).click
    find_element(accessibility_id: @payment_method).click
    find_element(accessibility_id: @finalize_order).click
    end

    def swipe
      swipe(start_x: 75, start_y: 500, end_x: 75, end_y: 20, duration: 500)
    end

    def close_banner(banner)
      if banner
        find_element(accessibility_id: 'modal-close').click
      end
    end


    def message_validation
        result = find_element(accessibility_id: 'custom_category_item_name').text
        expect(result).to eq('TestUnit')
    end


end
