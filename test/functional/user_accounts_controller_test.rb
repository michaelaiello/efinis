require 'test_helper'

class UserAccountsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_accounts" do
    assert_difference('UserAccounts.count') do
      post :create, :user_accounts => { }
    end

    assert_redirected_to user_accounts_path(assigns(:user_accounts))
  end

  test "should show user_accounts" do
    get :show, :id => user_accounts(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => user_accounts(:one).id
    assert_response :success
  end

  test "should update user_accounts" do
    put :update, :id => user_accounts(:one).id, :user_accounts => { }
    assert_redirected_to user_accounts_path(assigns(:user_accounts))
  end

  test "should destroy user_accounts" do
    assert_difference('UserAccounts.count', -1) do
      delete :destroy, :id => user_accounts(:one).id
    end

    assert_redirected_to user_accounts_path
  end
end
