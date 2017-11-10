require 'test_helper'

class TechniciansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @technician = technicians(:one)
  end

  test "should get index" do
    get technicians_url
    assert_response :success
  end

  test "should get new" do
    get new_technician_url
    assert_response :success
  end

  test "should create technician" do
    assert_difference('Technician.count') do
      post technicians_url, params: { technician: { certificate_number: @technician.certificate_number, certificate_type: @technician.certificate_type, email: @technician.email, name: @technician.name, password: 'secret', password_confirmation: 'secret', username: @technician.username } }
    end

    assert_redirected_to technician_url(Technician.last)
  end

  test "should show technician" do
    get technician_url(@technician)
    assert_response :success
  end

  test "should get edit" do
    get edit_technician_url(@technician)
    assert_response :success
  end

  test "should update technician" do
    patch technician_url(@technician), params: { technician: { certificate_number: @technician.certificate_number, certificate_type: @technician.certificate_type, email: @technician.email, name: @technician.name, password: 'secret', password_confirmation: 'secret', username: @technician.username } }
    assert_redirected_to technician_url(@technician)
  end

  test "should destroy technician" do
    assert_difference('Technician.count', -1) do
      delete technician_url(@technician)
    end

    assert_redirected_to technicians_url
  end
end
