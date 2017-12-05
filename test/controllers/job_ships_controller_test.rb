require 'test_helper'

class JobShipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_ship = job_ships(:one)
  end

  test "should get index" do
    get job_ships_url
    assert_response :success
  end

  test "should get new" do
    get new_job_ship_url
    assert_response :success
  end

  test "should create job_ship" do
    assert_difference('JobShip.count') do
      post job_ships_url, params: { job_ship: {  } }
    end

    assert_redirected_to job_ship_url(JobShip.last)
  end

  test "should show job_ship" do
    get job_ship_url(@job_ship)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_ship_url(@job_ship)
    assert_response :success
  end

  test "should update job_ship" do
    patch job_ship_url(@job_ship), params: { job_ship: {  } }
    assert_redirected_to job_ship_url(@job_ship)
  end

  test "should destroy job_ship" do
    assert_difference('JobShip.count', -1) do
      delete job_ship_url(@job_ship)
    end

    assert_redirected_to job_ships_url
  end
end
