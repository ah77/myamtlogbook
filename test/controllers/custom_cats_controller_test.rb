require 'test_helper'

class CustomCatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_cat = custom_cats(:one)
  end

  test "should get index" do
    get custom_cats_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_cat_url
    assert_response :success
  end

  test "should create custom_cat" do
    assert_difference('CustomCat.count') do
      post custom_cats_url, params: { custom_cat: { description: @custom_cat.description, name: @custom_cat.name } }
    end

    assert_redirected_to custom_cat_url(CustomCat.last)
  end

  test "should show custom_cat" do
    get custom_cat_url(@custom_cat)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_cat_url(@custom_cat)
    assert_response :success
  end

  test "should update custom_cat" do
    patch custom_cat_url(@custom_cat), params: { custom_cat: { description: @custom_cat.description, name: @custom_cat.name } }
    assert_redirected_to custom_cat_url(@custom_cat)
  end

  test "should destroy custom_cat" do
    assert_difference('CustomCat.count', -1) do
      delete custom_cat_url(@custom_cat)
    end

    assert_redirected_to custom_cats_url
  end
end
