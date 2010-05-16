require 'test_helper'

class ParkingSpacesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parking_spaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parking_space" do
    assert_difference('ParkingSpace.count') do
      post :create, :parking_space => { }
    end

    assert_redirected_to parking_space_path(assigns(:parking_space))
  end

  test "should show parking_space" do
    get :show, :id => parking_spaces(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => parking_spaces(:one).id
    assert_response :success
  end

  test "should update parking_space" do
    put :update, :id => parking_spaces(:one).id, :parking_space => { }
    assert_redirected_to parking_space_path(assigns(:parking_space))
  end

  test "should destroy parking_space" do
    assert_difference('ParkingSpace.count', -1) do
      delete :destroy, :id => parking_spaces(:one).id
    end

    assert_redirected_to parking_spaces_path
  end
end
