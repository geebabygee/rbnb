require 'test_helper'

class UserVideosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_videos_index_url
    assert_response :success
  end

  test "should get new" do
    get user_videos_new_url
    assert_response :success
  end

  test "should get create" do
    get user_videos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get user_videos_destroy_url
    assert_response :success
  end

end
