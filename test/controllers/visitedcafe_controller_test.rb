require 'test_helper'

class VisitedcafeControllerTest < ActionController::TestCase
  setup do
    @visitedcafe = visitedcafe(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visitedcafe)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visitedcafe" do
    assert_difference('Visitedcafe.count') do
      post :create, visitedcafe: { cafe_id: @visitedcafe.cafe_id, user_id: @visitedcafe.user_id }
    end

    assert_redirected_to visitedcafe_path(assigns(:visitedcafe))
  end

  test "should show visitedcafe" do
    get :show, id: @visitedcafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visitedcafe
    assert_response :success
  end

  test "should update visitedcafe" do
    patch :update, id: @visitedcafe, visitedcafe: { cafe_id: @visitedcafe.cafe_id, user_id: @visitedcafe.user_id }
    assert_redirected_to visitedcafe_path(assigns(:visitedcafe))
  end

  test "should destroy visitedcafe" do
    assert_difference('Visitedcafe.count', -1) do
      delete :destroy, id: @visitedcafe
    end

    assert_redirected_to visitedcafe_index_path
  end
end
