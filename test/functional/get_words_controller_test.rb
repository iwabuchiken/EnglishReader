require 'test_helper'

class GetWordsControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
