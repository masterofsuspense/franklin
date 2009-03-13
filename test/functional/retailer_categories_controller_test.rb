require 'test_helper'

class RetailerCategoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:retailer_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create retailer_category" do
    assert_difference('RetailerCategory.count') do
      post :create, :retailer_category => { }
    end

    assert_redirected_to retailer_category_path(assigns(:retailer_category))
  end

  test "should show retailer_category" do
    get :show, :id => retailer_categories(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => retailer_categories(:one).id
    assert_response :success
  end

  test "should update retailer_category" do
    put :update, :id => retailer_categories(:one).id, :retailer_category => { }
    assert_redirected_to retailer_category_path(assigns(:retailer_category))
  end

  test "should destroy retailer_category" do
    assert_difference('RetailerCategory.count', -1) do
      delete :destroy, :id => retailer_categories(:one).id
    end

    assert_redirected_to retailer_categories_path
  end
end
