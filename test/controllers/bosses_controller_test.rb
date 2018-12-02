require 'test_helper'

class BossesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bosses_index_url
    assert_response :success
  end

  test "should get new" do
    get bosses_new_url
    assert_response :success
  end

  test "should get edit" do
    get bosses_edit_url
    assert_response :success
  end

end
