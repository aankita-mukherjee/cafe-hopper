require 'test_helper'

class WishlistedcafesControllerTest < ActionController::TestCase
  setup do
    @wishlistedcafe = wishlistedcafes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wishlistedcafes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wishlistedcafe" do
    assert_difference('Wishlistedcafe.count') do
      post :create, wishlistedcafe: { cafe_id: @wishlistedcafe.cafe_id, user_id: @wishlistedcafe.user_id }
    end

    assert_redirected_to wishlistedcafe_path(assigns(:wishlistedcafe))
  end

  test "should show wishlistedcafe" do
    get :show, id: @wishlistedcafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wishlistedcafe
    assert_response :success
  end

  test "should update wishlistedcafe" do
    patch :update, id: @wishlistedcafe, wishlistedcafe: { cafe_id: @wishlistedcafe.cafe_id, user_id: @wishlistedcafe.user_id }
    assert_redirected_to wishlistedcafe_path(assigns(:wishlistedcafe))
  end

  test "should destroy wishlistedcafe" do
    assert_difference('Wishlistedcafe.count', -1) do
      delete :destroy, id: @wishlistedcafe
    end

    assert_redirected_to wishlistedcafes_path
  end
end
