require 'test_helper'

class SizesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sizes_new_url
    assert_response :success
  end

end
