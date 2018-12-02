require 'test_helper'

class EnemysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get enemys_index_url
    assert_response :success
  end

  test "should get new" do
    get enemys_new_url
    assert_response :success
  end

  test "should get edit" do
    get enemys_edit_url
    assert_response :success
  end

end
