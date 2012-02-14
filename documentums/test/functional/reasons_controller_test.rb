require 'test_helper'

class ReasonsControllerTest < ActionController::TestCase
  setup do
    @reason = reasons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reasons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reason" do
    assert_difference('Reason.count') do
      post :create, reason: @reason.attributes
    end

    assert_redirected_to reason_path(assigns(:reason))
  end

  test "should show reason" do
    get :show, id: @reason.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reason.to_param
    assert_response :success
  end

  test "should update reason" do
    put :update, id: @reason.to_param, reason: @reason.attributes
    assert_redirected_to reason_path(assigns(:reason))
  end

  test "should destroy reason" do
    assert_difference('Reason.count', -1) do
      delete :destroy, id: @reason.to_param
    end

    assert_redirected_to reasons_path
  end
end
