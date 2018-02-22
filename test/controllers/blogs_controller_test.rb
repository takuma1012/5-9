require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get blogs_top_url
    assert_response :success
  end

  test "should get index" do
    get blogs_index_url
    assert_response :success
  end

  test "should get detail" do
    get blogs_detail_url
    assert_response :success
  end

  test "should get edit" do
    get blogs_edit_url
    assert_response :success
  end

end
