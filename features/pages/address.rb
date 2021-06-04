class Address < Appium::Driver

 def initialize
   @insert_address= 'address input'
   @address_auto_complete= 'address-card-auto-complete'
   @address_complement= 'complement-input'
   @continue_address= 'continue'
end

  def enter_address
   find_element(accessibility_id: @insert_address).click
   find_element(accessibility_id: @insert_address).send_keys 'Rua marie nader calfat 351'
   find_element(accessibility_id: @address_auto_complete).click
   find_element(accessibility_id: @address_complement).send_keys '54'
   hide_keyboard
   find_element(accessibility_id: @continue_address).click
   sleep(6)
  end
end
puts enter_address
