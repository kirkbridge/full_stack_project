require 'test_helper'

class StaticPageControllerTest < ActionDispatch::IntegrationTest
  test "should get about_us" do
    get static_page_about_us_url
    assert_response :success
  end

  test "should get contact_us" do
    get static_page_contact_us_url
    assert_response :success
  end

end
