require 'test_helper'

class AircraftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aircraft = aircrafts(:one)
  end

  test "should get index" do
    get aircrafts_url
    assert_response :success
  end

  test "should get new" do
    get new_aircraft_url
    assert_response :success
  end

  test "should create aircraft" do
    assert_difference('Aircraft.count') do
      post aircrafts_url, params: { aircraft: { ac_make_model_id: @aircraft.ac_make_model_id, n_number: @aircraft.n_number, notes: @aircraft.notes, serial_number: @aircraft.serial_number } }
    end

    assert_redirected_to aircraft_url(Aircraft.last)
  end

  test "should show aircraft" do
    get aircraft_url(@aircraft)
    assert_response :success
  end

  test "should get edit" do
    get edit_aircraft_url(@aircraft)
    assert_response :success
  end

  test "should update aircraft" do
    patch aircraft_url(@aircraft), params: { aircraft: { ac_make_model_id: @aircraft.ac_make_model_id, n_number: @aircraft.n_number, notes: @aircraft.notes, serial_number: @aircraft.serial_number } }
    assert_redirected_to aircraft_url(@aircraft)
  end

  test "should destroy aircraft" do
    assert_difference('Aircraft.count', -1) do
      delete aircraft_url(@aircraft)
    end

    assert_redirected_to aircrafts_url
  end
end
