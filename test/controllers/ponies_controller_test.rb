require 'test_helper'

class PoniesControllerTest < ActionController::TestCase
  setup do
    @pony = ponies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ponies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pony" do
    assert_difference('Pony.count') do
      post :create, pony: { name: @pony.name, profession: @pony.profession }
    end

    assert_redirected_to pony_path(assigns(:pony))
  end

  test "should show pony" do
    get :show, id: @pony
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pony
    assert_response :success
  end

  test "should update pony" do
    patch :update, id: @pony, pony: { name: @pony.name, profession: @pony.profession }
    assert_redirected_to pony_path(assigns(:pony))
  end

  test "should destroy pony" do
    assert_difference('Pony.count', -1) do
      delete :destroy, id: @pony
    end

    assert_redirected_to ponies_path
  end
end
