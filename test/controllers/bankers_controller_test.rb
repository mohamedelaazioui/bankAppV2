require 'test_helper'

class BankersControllerTest < ActionController::TestCase
  setup do
    @banker = bankers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bankers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banker" do
    assert_difference('Banker.count') do
      post :create, banker: { branch_id: @banker.branch_id, emailAddress: @banker.emailAddress, firstName: @banker.firstName, lastName: @banker.lastName, phoneNumber: @banker.phoneNumber }
    end

    assert_redirected_to banker_path(assigns(:banker))
  end

  test "should show banker" do
    get :show, id: @banker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @banker
    assert_response :success
  end

  test "should update banker" do
    patch :update, id: @banker, banker: { branch_id: @banker.branch_id, emailAddress: @banker.emailAddress, firstName: @banker.firstName, lastName: @banker.lastName, phoneNumber: @banker.phoneNumber }
    assert_redirected_to banker_path(assigns(:banker))
  end

  test "should destroy banker" do
    assert_difference('Banker.count', -1) do
      delete :destroy, id: @banker
    end

    assert_redirected_to bankers_path
  end
end
