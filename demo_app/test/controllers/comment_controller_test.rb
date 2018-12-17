require 'test_helper'

class CommentControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get comment_show_url
    assert_response :success
  end

end
