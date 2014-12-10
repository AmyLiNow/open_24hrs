require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get map" do
    get :map
    assert_response :success
    assert_select "title", "Open24hrs"
  end

end
