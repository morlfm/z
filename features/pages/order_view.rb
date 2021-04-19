require'rspec'

class Order < Appium::Driver

   def initialize
    @products= 'see-products'
    @search= '//android.view.ViewGroup[@content-desc="open-search"]/android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText'
    @search_input= '//android.widget.EditText[@content-desc="search-input"]'
    @tap_element= '(//android.view.ViewGroup[@content-desc="default-product-card"])[1]'
    @add_6_items='add-6-units-button'
    @add_15_items= 'add-15-units-button'
    @add_1='//android.view.ViewGroup[@content-desc="plus-button"]/android.widget.TextView'
    @add_to_checkout= 'add-to-checkout'
    @place_order= 'place-an-order'
    @payment_status= 'checkout-action-button'
    @payment_method= 'payment-method-CREDIT_CARD'
    @finalize_order= 'checkout-payment-action-button'
   end

   def place_order
    find_element(accessibility_id: @products).click
    banner= element_visible('modal-close')
    close_banner(banner)
    sleep(3)
    find_element(xpath: @search).click
    find_element(xpath: @search_input).send_keys 'Colorado'
    find_element(xpath: @tap_element).click
    find_element(xpath: @add_1).click
    find_element(accessibility_id: @add_to_checkout).click
    find_element(accessibility_id: @place_order).click
    sleep(3)
   end

    def close_banner(banner)
      if banner
        find_element(accessibility_id: 'modal-close').click
      end
    end

    def element_visible(id)
  		begin
  			wait{find_element(accessibility_id: id).displayed?}
  			return true
  		rescue
  			return false
  		end
  	end

    def message_validation
        result = find_element(xpath: '//android.view.ViewGroup[@content-desc="coupon-select"]/android.widget.TextView[2]').text
        expect(result).to eq("Você não está no endereço cadastrado,deseja continuar?")
    end
end
