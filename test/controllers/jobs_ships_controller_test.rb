require 'test_helper'

class JobsShipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jobs_ships_index_url
    assert_response :success
  end

  test "should get show" do
    get jobs_ships_show_url
    assert_response :success
  end

  test "should get new" do
    get jobs_ships_new_url
    assert_response :success
  end

end
