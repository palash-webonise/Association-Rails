require 'test_helper'

class PerchaseHistoriesControllerTest < ActionController::TestCase
  setup do
    @perchase_history = perchase_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perchase_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perchase_history" do
    assert_difference('PerchaseHistory.count') do
      post :create, perchase_history: { purchase_data: @perchase_history.purchase_data, transaction_type: @perchase_history.transaction_type }
    end

    assert_redirected_to perchase_history_path(assigns(:perchase_history))
  end

  test "should show perchase_history" do
    get :show, id: @perchase_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perchase_history
    assert_response :success
  end

  test "should update perchase_history" do
    patch :update, id: @perchase_history, perchase_history: { purchase_data: @perchase_history.purchase_data, transaction_type: @perchase_history.transaction_type }
    assert_redirected_to perchase_history_path(assigns(:perchase_history))
  end

  test "should destroy perchase_history" do
    assert_difference('PerchaseHistory.count', -1) do
      delete :destroy, id: @perchase_history
    end

    assert_redirected_to perchase_histories_path
  end
end
