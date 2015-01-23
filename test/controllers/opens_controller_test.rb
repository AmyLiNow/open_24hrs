require 'test_helper'

class OpensControllerTest < ActionController::TestCase
  setup do
    @open = opens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open" do
    assert_difference('Open.count') do
      post :create, open: { category: @open.category, city: @open.city, latitude: @open.latitude, longitude: @open.longitude, name: @open.name, neighborhood: @open.neighborhood, phone: @open.phone, state: @open.state, street: @open.street, website: @open.website, yelp: @open.yelp, zip: @open.zip }
    end

    assert_redirected_to open_path(assigns(:open))
  end

  test "should show open" do
    get :show, id: @open
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open
    assert_response :success
  end

  test "should update open" do
    patch :update, id: @open, open: { category: @open.category, city: @open.city, latitude: @open.latitude, longitude: @open.longitude, name: @open.name, neighborhood: @open.neighborhood, phone: @open.phone, state: @open.state, street: @open.street, website: @open.website, yelp: @open.yelp, zip: @open.zip }
    assert_redirected_to open_path(assigns(:open))
  end

  test "should destroy open" do
    assert_difference('Open.count', -1) do
      delete :destroy, id: @open
    end

    assert_redirected_to opens_path
  end
end
