require "test_helper"

class UserDataControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_data_create_url
    assert_response :success
  end

  test "should get read" do
    get user_data_read_url
    assert_response :success
  end

  test "should get update" do
    get user_data_update_url
    assert_response :success
  end

  test "should get delete" do
    get user_data_delete_url
    assert_response :success
  end
end
