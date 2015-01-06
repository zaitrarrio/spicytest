require 'rubygems'
require 'minitest/autorun'
require 'selenium-webdriver'

class LoginTest < MiniTest::Test
  def setup

    @driver = Selenium::WebDriver.for :chrome
  end

  def test_post
    @driver.navigate.to "http://localhost:9675"
    element = @driver.find_element(:id, 'pro_user_email')
    element.send_keys "zaitrarrio@yahoo.com"
    element.submit
    # assert_equal(@driver.title, "TestingBot - Google Search")
  end

  def teardown
    @driver.quit
  end
end
