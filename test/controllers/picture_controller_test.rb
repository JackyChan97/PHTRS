require 'test_helper'

class PictureControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get picture_show_url
    assert_response :success
  end

end
