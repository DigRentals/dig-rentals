require 'test_helper'

class PropertyAttributesControllerTest < ActionController::TestCase
  setup do
    @property_attribute = property_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_attribute" do
    assert_difference('PropertyAttribute.count') do
      post :create, property_attribute: @property_attribute.attributes
    end

    assert_redirected_to property_attribute_path(assigns(:property_attribute))
  end

  test "should show property_attribute" do
    get :show, id: @property_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property_attribute
    assert_response :success
  end

  test "should update property_attribute" do
    put :update, id: @property_attribute, property_attribute: @property_attribute.attributes
    assert_redirected_to property_attribute_path(assigns(:property_attribute))
  end

  test "should destroy property_attribute" do
    assert_difference('PropertyAttribute.count', -1) do
      delete :destroy, id: @property_attribute
    end

    assert_redirected_to property_attributes_path
  end
end
