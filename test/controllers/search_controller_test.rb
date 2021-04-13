require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get content" do
    get search_content_url
    assert_response :success
  end

end
