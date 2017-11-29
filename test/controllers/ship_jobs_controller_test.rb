require 'test_helper'

class ShipJobsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ship_jobs_index_url
    assert_response :success
  end

  test "should get show" do
    get ship_jobs_show_url
    assert_response :success
  end

  test "should get new" do
    get ship_jobs_new_url
    assert_response :success
  end

end
