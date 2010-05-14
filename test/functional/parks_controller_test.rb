require 'test_helper'

class ParksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create park" do
    assert_difference('Park.count') do
      post :create, :park => { }
    end

    assert_redirected_to park_path(assigns(:park))
  end

  test "should show park" do
    get :show, :id => parks(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => parks(:one).id
    assert_response :success
  end

  test "should update park" do
    put :update, :id => parks(:one).id, :park => { }
    assert_redirected_to park_path(assigns(:park))
  end

  test "should destroy park" do
    assert_difference('Park.count', -1) do
      delete :destroy, :id => parks(:one).id
    end

    assert_redirected_to parks_path
  end
end
