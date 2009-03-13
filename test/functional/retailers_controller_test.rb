require 'test_helper'

class RetailersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:retailers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create retailer" do
    assert_difference('Retailer.count') do
      post :create, :retailer => { }
    end

    assert_redirected_to retailer_path(assigns(:retailer))
  end

  test "should show retailer" do
    get :show, :id => retailers(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => retailers(:one).id
    assert_response :success
  end

  test "should update retailer" do
    put :update, :id => retailers(:one).id, :retailer => { }
    assert_redirected_to retailer_path(assigns(:retailer))
  end

  test "should destroy retailer" do
    assert_difference('Retailer.count', -1) do
      delete :destroy, :id => retailers(:one).id
    end

    assert_redirected_to retailers_path
  end
end
