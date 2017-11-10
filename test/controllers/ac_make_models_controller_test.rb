require 'test_helper'

class AcMakeModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ac_make_model = ac_make_models(:one)
  end

  test "should get index" do
    get ac_make_models_url
    assert_response :success
  end

  test "should get new" do
    get new_ac_make_model_url
    assert_response :success
  end

  test "should create ac_make_model" do
    assert_difference('AcMakeModel.count') do
      post ac_make_models_url, params: { ac_make_model: { abbreviation: @ac_make_model.abbreviation, family: @ac_make_model.family, manufacturer: @ac_make_model.manufacturer, model: @ac_make_model.model } }
    end

    assert_redirected_to ac_make_model_url(AcMakeModel.last)
  end

  test "should show ac_make_model" do
    get ac_make_model_url(@ac_make_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_ac_make_model_url(@ac_make_model)
    assert_response :success
  end

  test "should update ac_make_model" do
    patch ac_make_model_url(@ac_make_model), params: { ac_make_model: { abbreviation: @ac_make_model.abbreviation, family: @ac_make_model.family, manufacturer: @ac_make_model.manufacturer, model: @ac_make_model.model } }
    assert_redirected_to ac_make_model_url(@ac_make_model)
  end

  test "should destroy ac_make_model" do
    assert_difference('AcMakeModel.count', -1) do
      delete ac_make_model_url(@ac_make_model)
    end

    assert_redirected_to ac_make_models_url
  end
end
