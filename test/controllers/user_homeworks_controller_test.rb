require 'test_helper'

class UserHomeworksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_homeworks_create_url
    assert_response :success
  end

end
