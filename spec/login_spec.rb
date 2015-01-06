require 'rubygems'
require 'minitest/autorun'
require 'selenium-webdriver'

class LoginTest < MiniTest::Test
  def setup

    @driver = Selenium::WebDriver.for :chrome
  end

  def test_post
    @driver.navigate.to "http://localhost:80/wizard/start"
    element = @driver.find_element(:id, 'registered_user_email')
    element.send_keys "zaitrarrio@yahoo.com"
    element.submit
    # assert_equal(@driver.title, "TestingBot - Google Search")
  end

  def teardown
    @driver.quit
  end
end
