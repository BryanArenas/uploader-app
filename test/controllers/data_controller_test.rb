require 'test_helper'

class DataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get data_index_url
    assert_response :success
  end

  test "should get import" do
    get data_import_url
    assert_response :success
  end

end
