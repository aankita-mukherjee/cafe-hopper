require 'test_helper'

class CafefeaturesControllerTest < ActionController::TestCase
  setup do
    @cafefeature = cafefeatures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cafefeatures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cafefeature" do
    assert_difference('Cafefeature.count') do
      post :create, cafefeature: { cafe_id: @cafefeature.cafe_id, featurename: @cafefeature.featurename }
    end

    assert_redirected_to cafefeature_path(assigns(:cafefeature))
  end

  test "should show cafefeature" do
    get :show, id: @cafefeature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cafefeature
    assert_response :success
  end

  test "should update cafefeature" do
    patch :update, id: @cafefeature, cafefeature: { cafe_id: @cafefeature.cafe_id, featurename: @cafefeature.featurename }
    assert_redirected_to cafefeature_path(assigns(:cafefeature))
  end

  test "should destroy cafefeature" do
    assert_difference('Cafefeature.count', -1) do
      delete :destroy, id: @cafefeature
    end

    assert_redirected_to cafefeatures_path
  end
end
