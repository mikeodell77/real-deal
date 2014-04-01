require 'test_helper'

class FundingRequirementsControllerTest < ActionController::TestCase
  setup do
    @funding_requirement = funding_requirements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funding_requirements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funding_requirement" do
    assert_difference('FundingRequirement.count') do
      post :create, funding_requirement: { desired_amount: @funding_requirement.desired_amount, percentage_to_give: @funding_requirement.percentage_to_give }
    end

    assert_redirected_to funding_requirement_path(assigns(:funding_requirement))
  end

  test "should show funding_requirement" do
    get :show, id: @funding_requirement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funding_requirement
    assert_response :success
  end

  test "should update funding_requirement" do
    patch :update, id: @funding_requirement, funding_requirement: { desired_amount: @funding_requirement.desired_amount, percentage_to_give: @funding_requirement.percentage_to_give }
    assert_redirected_to funding_requirement_path(assigns(:funding_requirement))
  end

  test "should destroy funding_requirement" do
    assert_difference('FundingRequirement.count', -1) do
      delete :destroy, id: @funding_requirement
    end

    assert_redirected_to funding_requirements_path
  end
end
