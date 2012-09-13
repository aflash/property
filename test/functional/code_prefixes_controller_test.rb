require 'test_helper'

class CodePrefixesControllerTest < ActionController::TestCase
  setup do
    @code_prefix = code_prefixes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_prefixes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_prefix" do
    assert_difference('CodePrefix.count') do
      post :create, :code_prefix => @code_prefix.attributes
    end

    assert_redirected_to code_prefix_path(assigns(:code_prefix))
  end

  test "should show code_prefix" do
    get :show, :id => @code_prefix.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @code_prefix.to_param
    assert_response :success
  end

  test "should update code_prefix" do
    put :update, :id => @code_prefix.to_param, :code_prefix => @code_prefix.attributes
    assert_redirected_to code_prefix_path(assigns(:code_prefix))
  end

  test "should destroy code_prefix" do
    assert_difference('CodePrefix.count', -1) do
      delete :destroy, :id => @code_prefix.to_param
    end

    assert_redirected_to code_prefixes_path
  end
end
