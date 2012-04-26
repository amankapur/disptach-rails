require 'test_helper'

class KookoosControllerTest < ActionController::TestCase
  setup do
    @kookoo = kookoos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kookoos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kookoo" do
    assert_difference('Kookoo.count') do
      post :create, kookoo: @kookoo.attributes
    end

    assert_redirected_to kookoo_path(assigns(:kookoo))
  end

  test "should show kookoo" do
    get :show, id: @kookoo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kookoo
    assert_response :success
  end

  test "should update kookoo" do
    put :update, id: @kookoo, kookoo: @kookoo.attributes
    assert_redirected_to kookoo_path(assigns(:kookoo))
  end

  test "should destroy kookoo" do
    assert_difference('Kookoo.count', -1) do
      delete :destroy, id: @kookoo
    end

    assert_redirected_to kookoos_path
  end
end
