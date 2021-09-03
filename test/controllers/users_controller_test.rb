require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get users_name:string_url
    assert_response :success
  end

  test "should get pwd:string" do
    get users_pwd:string_url
    assert_response :success
  end

  test "should get token:token" do
    get users_token:token_url
    assert_response :success
  end

end
