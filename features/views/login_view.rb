class Login < Appium::Driver
	def initialize
		@enter = 'enter'
		@email= 'email'
		@password = 'password'
		@enter_account= 'already-have-an-account'
    @first_message = '//android.view.ViewGroup[@content-desc="onboarding-secondary-action-button"]/android.widget.TextView'
	end

  def enter_login
		wait {find_element(accessibility_id: @enter_account).click}
		find_element(accessibility_id: @email).send_keys 'moral@pokemail.net'
		find_element(accessibility_id: @password).send_keys 'teste01234'
		find_element(accessibility_id: @enter).click
	end

	def verify_if_modal_appears?
    is_visible= element_visible(@first_message)
    sleep(4)
    jump_intro(@first_message,is_visible)
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
