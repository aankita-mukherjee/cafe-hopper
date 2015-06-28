require 'test_helper'

class CafesControllerTest < ActionController::TestCase
  setup do
    @cafe = cafes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cafes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cafe" do
    assert_difference('Cafe.count') do
      post :create, cafe: { address: @cafe.address, cafename: @cafe.cafename, description: @cafe.description, features: @cafe.features, goforits: @cafe.goforits, hashtags: @cafe.hashtags, phone: @cafe.phone }
    end

    assert_redirected_to cafe_path(assigns(:cafe))
  end

  test "should show cafe" do
    get :show, id: @cafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cafe
    assert_response :success
  end

  test "should update cafe" do
    patch :update, id: @cafe, cafe: { address: @cafe.address, cafename: @cafe.cafename, description: @cafe.description, features: @cafe.features, goforits: @cafe.goforits, hashtags: @cafe.hashtags, phone: @cafe.phone }
    assert_redirected_to cafe_path(assigns(:cafe))
  end

  test "should destroy cafe" do
    assert_difference('Cafe.count', -1) do
      delete :destroy, id: @cafe
    end

    assert_redirected_to cafes_path
  end
end
