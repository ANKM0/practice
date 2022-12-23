require "test_helper"

class PostImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new," do
    get post_images_new,_url
    assert_response :success
  end

  test "should get index," do
    get post_images_index,_url
    assert_response :success
  end

  test "should get show" do
    get post_images_show_url
    assert_response :success
  end
end
