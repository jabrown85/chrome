class Spider

  def get_browser
    options = Selenium::WebDriver::Chrome::Options.new

    if chrome_bin = ENV["GOOGLE_CHROME_BIN"]
      options.binary = chrome_bin
      Selenium::WebDriver::Chrome.driver_path = \
        "/app/vendor/bundle/bin/chromedriver"
    end

    # make the browser
    Watir::Browser.new :chrome, options: options
  end

  def go_to_google
    browser = get_browser
    browser.goto "google.com"
  end


end