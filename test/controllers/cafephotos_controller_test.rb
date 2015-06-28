require 'test_helper'

class CafephotosControllerTest < ActionController::TestCase
  setup do
    @cafephoto = cafephotos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cafephotos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cafephoto" do
    assert_difference('Cafephoto.count') do
      post :create, cafephoto: { cafe_id: @cafephoto.cafe_id, photourl: @cafephoto.photourl }
    end

    assert_redirected_to cafephoto_path(assigns(:cafephoto))
  end

  test "should show cafephoto" do
    get :show, id: @cafephoto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cafephoto
    assert_response :success
  end

  test "should update cafephoto" do
    patch :update, id: @cafephoto, cafephoto: { cafe_id: @cafephoto.cafe_id, photourl: @cafephoto.photourl }
    assert_redirected_to cafephoto_path(assigns(:cafephoto))
  end

  test "should destroy cafephoto" do
    assert_difference('Cafephoto.count', -1) do
      delete :destroy, id: @cafephoto
    end

    assert_redirected_to cafephotos_path
  end
end
