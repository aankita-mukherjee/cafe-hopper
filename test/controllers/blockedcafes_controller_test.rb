require 'test_helper'

class BlockedcafesControllerTest < ActionController::TestCase
  setup do
    @blockedcafe = blockedcafes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blockedcafes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blockedcafe" do
    assert_difference('Blockedcafe.count') do
      post :create, blockedcafe: { cafe_id: @blockedcafe.cafe_id, user_id: @blockedcafe.user_id }
    end

    assert_redirected_to blockedcafe_path(assigns(:blockedcafe))
  end

  test "should show blockedcafe" do
    get :show, id: @blockedcafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blockedcafe
    assert_response :success
  end

  test "should update blockedcafe" do
    patch :update, id: @blockedcafe, blockedcafe: { cafe_id: @blockedcafe.cafe_id, user_id: @blockedcafe.user_id }
    assert_redirected_to blockedcafe_path(assigns(:blockedcafe))
  end

  test "should destroy blockedcafe" do
    assert_difference('Blockedcafe.count', -1) do
      delete :destroy, id: @blockedcafe
    end

    assert_redirected_to blockedcafes_path
  end
end
