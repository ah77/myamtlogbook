require 'test_helper'

class WorkLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_location = work_locations(:one)
  end

  test "should get index" do
    get work_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_work_location_url
    assert_response :success
  end

  test "should create work_location" do
    assert_difference('WorkLocation.count') do
      post work_locations_url, params: { work_location: { description: @work_location.description, notes: @work_location.notes } }
    end

    assert_redirected_to work_location_url(WorkLocation.last)
  end

  test "should show work_location" do
    get work_location_url(@work_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_location_url(@work_location)
    assert_response :success
  end

  test "should update work_location" do
    patch work_location_url(@work_location), params: { work_location: { description: @work_location.description, notes: @work_location.notes } }
    assert_redirected_to work_location_url(@work_location)
  end

  test "should destroy work_location" do
    assert_difference('WorkLocation.count', -1) do
      delete work_location_url(@work_location)
    end

    assert_redirected_to work_locations_url
  end
end
