require 'test_helper'

class Tags2ControllerTest < ActionDispatch::IntegrationTest
  test "should get new2" do
    get tags2_new2_url
    assert_response :success
  end

  test "should get index2" do
    get tags2_index2_url
    assert_response :success
  end

end
