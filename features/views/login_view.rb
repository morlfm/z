
require 'pry'
class Login < Appium::Driver

   def initialize
    @enter = 'enter'
    @email= 'email'
    @password = 'password'
    #@jump_intro= 'onboarding-secondary-action-button'
    @enter_account= 'already-have-an-account'
  end
   def enter_login
        sleep(3)
        is_visible= element_visible('//android.view.ViewGroup[@content-desc="onboarding-secondary-action-button"]/android.widget.TextView')
        jump_intro('//android.view.ViewGroup[@content-desc="onboarding-secondary-action-button"]/android.widget.TextView',is_visible)
        wait {find_element(accessibility_id: @enter_account).click}
        find_element(accessibility_id: @email).send_keys 'moral@pokemail.net'
        find_element(accessibility_id: @password).send_keys 'teste01234'
        find_element(accessibility_id: @enter).click
    end

    def element_visible(id)
         begin
         wait {find_element(xpath: id).displayed?}
         return true
         rescue
         return false
       end
      end

    def jump_intro(intro,is_visible)
      if  is_visible
         find_element(xpath: intro).click
     end
    end


end
