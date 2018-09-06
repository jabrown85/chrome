class Spider

  def get_browser
    if ENV.fetch("GOOGLE_CHROME_SHIM", nil)
      Selenium::WebDriver::Chrome.path = ENV.fetch("GOOGLE_CHROME_SHIM")
      Selenium::WebDriver::Chrome.driver_path = "/app/vendor/bundle/bin/chromedriver"
    end
    browser = Watir::Browser.new :chrome
  end

  def go_to_google
    browser = get_browser
    browser.goto "google.com"
  end


end