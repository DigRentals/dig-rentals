require 'test_helper'

class PropertyAttributeConnectorsControllerTest < ActionController::TestCase
  setup do
    @property_attribute_connector = property_attribute_connectors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_attribute_connectors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_attribute_connector" do
    assert_difference('PropertyAttributeConnector.count') do
      post :create, property_attribute_connector: @property_attribute_connector.attributes
    end

    assert_redirected_to property_attribute_connector_path(assigns(:property_attribute_connector))
  end

  test "should show property_attribute_connector" do
    get :show, id: @property_attribute_connector
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property_attribute_connector
    assert_response :success
  end

  test "should update property_attribute_connector" do
    put :update, id: @property_attribute_connector, property_attribute_connector: @property_attribute_connector.attributes
    assert_redirected_to property_attribute_connector_path(assigns(:property_attribute_connector))
  end

  test "should destroy property_attribute_connector" do
    assert_difference('PropertyAttributeConnector.count', -1) do
      delete :destroy, id: @property_attribute_connector
    end

    assert_redirected_to property_attribute_connectors_path
  end
end
