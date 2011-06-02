require 'test_helper'

class Oauth2ControllerTest < ActionController::TestCase
  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get callback" do
    get :callback
    assert_response :success
  end

end
