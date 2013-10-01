require 'test_helper'

class RssReadersControllerTest < ActionController::TestCase
  test "should get reader" do
    get :reader
    assert_response :success
  end

end
