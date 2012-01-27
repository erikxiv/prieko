require 'test_helper'

class PatternsControllerTest < ActionController::TestCase
  setup do
    @pattern = patterns(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get :index
    assert_response :success
    assert_not_nil assigns(:patterns)
  end

  test "should get new" do
    sign_in users(:one)
    get :new
    assert_response :success
  end

  test "should create pattern" do
    sign_in users(:one)
    assert_difference('Pattern.count') do
      post :create, pattern: @pattern.attributes
    end

    assert_redirected_to pattern_path(assigns(:pattern))
  end

  test "should show pattern" do
    sign_in users(:one)
    get :show, id: @pattern.to_param
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get :edit, id: @pattern.to_param
    assert_response :success
  end

  test "should update pattern" do
    sign_in users(:one)
    put :update, id: @pattern.to_param, pattern: @pattern.attributes
    assert_redirected_to pattern_path(assigns(:pattern))
  end

  test "should destroy pattern" do
    sign_in users(:one)
    assert_difference('Pattern.count', -1) do
      delete :destroy, id: @pattern.to_param
    end

    assert_redirected_to patterns_path
  end
  
  test "new pattern should not overwrite manual categorizations" do
    sign_in users(:one)
    post :create, pattern: @pattern.attributes
    assert Verification.find(verifications(:manual_categorization).id).category == "ManualCategorization", "New pattern overrode manual categorization"
  end

  test "new pattern should categorize matching verifications" do
    sign_in users(:one)
    post :create, pattern: @pattern.attributes
    assert Verification.find(verifications(:no_categorization).id).category == "CategoryOne", "New pattern did not categorize matching verification"
  end
end
