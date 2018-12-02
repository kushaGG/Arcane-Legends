require 'test_helper'

class GameSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get game_sessions_index_url
    assert_response :success
  end

  test "should get new" do
    get game_sessions_new_url
    assert_response :success
  end

  test "should get edit" do
    get game_sessions_edit_url
    assert_response :success
  end

end
