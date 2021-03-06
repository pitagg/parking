require 'test_helper'

class VehicleTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_type" do
    assert_difference('VehicleType.count') do
      post :create, :vehicle_type => { }
    end

    assert_redirected_to vehicle_type_path(assigns(:vehicle_type))
  end

  test "should show vehicle_type" do
    get :show, :id => vehicle_types(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vehicle_types(:one).id
    assert_response :success
  end

  test "should update vehicle_type" do
    put :update, :id => vehicle_types(:one).id, :vehicle_type => { }
    assert_redirected_to vehicle_type_path(assigns(:vehicle_type))
  end

  test "should destroy vehicle_type" do
    assert_difference('VehicleType.count', -1) do
      delete :destroy, :id => vehicle_types(:one).id
    end

    assert_redirected_to vehicle_types_path
  end
end
