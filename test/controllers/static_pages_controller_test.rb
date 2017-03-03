require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get forcast" do
    get static_pages_forcast_url
    assert_response :success
  end

end
