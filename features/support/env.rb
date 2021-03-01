require 'appium_lib'
require 'airborne'
require 'pry'
require 'rspec'
require 'dotenv'

def caps
    {
        caps: {
            deviceName: "MeuDevice",
            platformName: "Android",
            app: (File.join(File.dirname(__FILE__), "Ze_Delivery_v20.30.1.apk")),
            appPackage: "com.cerveceriamodelo.modelonow",
            appActivity: "com.cerveceriamodelo.modelonow.MainActivity",
            newCommandTimeout: "3600",
            automationName: "UiAutomator2",
            autoGrantPermissions: "true",
        }, appium_lib: {
            wait: 5
        }
    }

end
#appium
include RSpec::Matchers
Appium::Driver.new(caps,true)
Appium.promote_appium_methods Object

#Airborne
ExpectationNotMetError = RSpec::Expectations::ExpectationNotMetError
ExpectationError       = Airborne::ExpectationError
InvalidJsonError       = Airborne::InvalidJsonError
PathError              = Airborne::PathError
