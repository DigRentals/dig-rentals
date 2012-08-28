require 'test_helper'

class ListingAttributeConnectorsControllerTest < ActionController::TestCase
  setup do
    @listing_attribute_connector = listing_attribute_connectors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listing_attribute_connectors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listing_attribute_connector" do
    assert_difference('ListingAttributeConnector.count') do
      post :create, listing_attribute_connector: @listing_attribute_connector.attributes
    end

    assert_redirected_to listing_attribute_connector_path(assigns(:listing_attribute_connector))
  end

  test "should show listing_attribute_connector" do
    get :show, id: @listing_attribute_connector
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listing_attribute_connector
    assert_response :success
  end

  test "should update listing_attribute_connector" do
    put :update, id: @listing_attribute_connector, listing_attribute_connector: @listing_attribute_connector.attributes
    assert_redirected_to listing_attribute_connector_path(assigns(:listing_attribute_connector))
  end

  test "should destroy listing_attribute_connector" do
    assert_difference('ListingAttributeConnector.count', -1) do
      delete :destroy, id: @listing_attribute_connector
    end

    assert_redirected_to listing_attribute_connectors_path
  end
end
