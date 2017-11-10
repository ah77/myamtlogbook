require 'test_helper'

class LogEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @log_entry = log_entries(:one)
  end

  test "should get index" do
    get log_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_log_entry_url
    assert_response :success
  end

  test "should create log_entry" do
    assert_difference('LogEntry.count') do
      post log_entries_url, params: { log_entry: { aircraft_id: @log_entry.aircraft_id, amt: @log_entry.amt, attachment: @log_entry.attachment, client_id: @log_entry.client_id, components: @log_entry.components, custom_cat_id: @log_entry.custom_cat_id, date: @log_entry.date, description: @log_entry.description, engine_id: @log_entry.engine_id, ia_ai: @log_entry.ia_ai, ia_pi: @log_entry.ia_pi, ir_ra: @log_entry.ir_ra, jasc: @log_entry.jasc, maint_time_large: @log_entry.maint_time_large, maint_time_small: @log_entry.maint_time_small, repairman: @log_entry.repairman, supervisor_id: @log_entry.supervisor_id, technician_id: @log_entry.technician_id, work_location_id: @log_entry.work_location_id } }
    end

    assert_redirected_to log_entry_url(LogEntry.last)
  end

  test "should show log_entry" do
    get log_entry_url(@log_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_log_entry_url(@log_entry)
    assert_response :success
  end

  test "should update log_entry" do
    patch log_entry_url(@log_entry), params: { log_entry: { aircraft_id: @log_entry.aircraft_id, amt: @log_entry.amt, attachment: @log_entry.attachment, client_id: @log_entry.client_id, components: @log_entry.components, custom_cat_id: @log_entry.custom_cat_id, date: @log_entry.date, description: @log_entry.description, engine_id: @log_entry.engine_id, ia_ai: @log_entry.ia_ai, ia_pi: @log_entry.ia_pi, ir_ra: @log_entry.ir_ra, jasc: @log_entry.jasc, maint_time_large: @log_entry.maint_time_large, maint_time_small: @log_entry.maint_time_small, repairman: @log_entry.repairman, supervisor_id: @log_entry.supervisor_id, technician_id: @log_entry.technician_id, work_location_id: @log_entry.work_location_id } }
    assert_redirected_to log_entry_url(@log_entry)
  end

  test "should destroy log_entry" do
    assert_difference('LogEntry.count', -1) do
      delete log_entry_url(@log_entry)
    end

    assert_redirected_to log_entries_url
  end
end
