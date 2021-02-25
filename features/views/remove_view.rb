
require'pry'
class Remove_prod <Appium::Driver

  def initialize
      @remove='delete-product'
      @confirm_removal='primary-modal-button'
  end

  def remove
      find_element(accessibility_id: @remove).click
      wait {find_element(accessibility_id: @confirm_removal)}.click
  end

end
