require 'test_helper'

class WearsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get wears_show_url
    assert_response :success
  end

  test "should get index" do
    get wears_index_url
    assert_response :success
  end

  test "should get new" do
    get wears_new_url
    assert_response :success
  end

  test "should get edit" do
    get wears_edit_url
    assert_response :success
  end

end
