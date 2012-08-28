require 'test_helper'

class ListingAttributesControllerTest < ActionController::TestCase
  setup do
    @listing_attribute = listing_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listing_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listing_attribute" do
    assert_difference('ListingAttribute.count') do
      post :create, listing_attribute: @listing_attribute.attributes
    end

    assert_redirected_to listing_attribute_path(assigns(:listing_attribute))
  end

  test "should show listing_attribute" do
    get :show, id: @listing_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listing_attribute
    assert_response :success
  end

  test "should update listing_attribute" do
    put :update, id: @listing_attribute, listing_attribute: @listing_attribute.attributes
    assert_redirected_to listing_attribute_path(assigns(:listing_attribute))
  end

  test "should destroy listing_attribute" do
    assert_difference('ListingAttribute.count', -1) do
      delete :destroy, id: @listing_attribute
    end

    assert_redirected_to listing_attributes_path
  end
end
