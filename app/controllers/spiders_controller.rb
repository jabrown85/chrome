class SpidersController < ApplicationController

  def create
    browser = _get_browser
    browser.goto

  end

  def _get_browser
    if !Rails.env.development?
      Selenium::WebDriver::Chrome.path = ENV.fetch("GOOGLE_CHROME_SHIM")
      Selenium::WebDriver::Chrome.driver_path = "/app/vendor/bundle/bin/chromedriver"
    end
    prefs = {"profile.default_content_setting_values.notifications" =>  2}
    Watir::Browser.new :chrome, options: {prefs: prefs}
  end

end