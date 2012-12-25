require 'test_helper'

class VerificationsControllerTest < ActionController::TestCase
  setup do
    @verification = verifications(:one)
  end

  test "should create verification" do
    sign_in users(:one)
    assert_difference('Verification.count') do
      post :create, verification: @verification.attributes
    end
  end

  test "should not show others verifications" do
    sign_in users(:lonely)
    assert_raise(ActiveRecord::RecordNotFound) do
      get :show, id: @verification.to_param
    end
  end

  test "should not be able to update others verifications" do
    sign_in users(:lonely)
    assert_raise(ActiveRecord::RecordNotFound) do
      put :update, id: @verification.to_param, verification: @verification.attributes
    end
  end

  test "should list only own verifications" do
    sign_in users(:lonely)
    get :index
    assert assigns(:verifications).length == 0, "User lonely ("+assigns("cu").email.to_s+") should not have any verifications, has " + assigns(:verifications).length.to_s
    sign_out users(:lonely)

    sign_in users(:one)
    get :index
    assert assigns("verifications").length == 4, "User one ("+assigns("cu").email.to_s+") should have 4 verifications, has " + assigns(:verifications).length.to_s
  end

  test "should destroy verification" do
    sign_in users(:one)
    assert_difference('Verification.count', -1) do
      delete :destroy, id: @verification.to_param
    end
  end

  test "should not be able to destroy others verification" do
    sign_in users(:lonely)
    assert_raise(ActiveRecord::RecordNotFound) do
      delete :destroy, id: @verification.to_param
    end
  end

  test "should list only verifications for the specified year" do
    sign_in users(:one)
    get :index, Year: 2011
    maxyear = assigns(:verifications).map{|x| x.year}.max
    minyear = assigns(:verifications).map{|x| x.year}.min
    assert minyear == 2011, "Should have only listed verifications from year 2011, got verifications from year " + minyear.to_s
    assert maxyear == 2011, "Should have only listed verifications from year 2011, got verifications from year " + maxyear.to_s
  end

  test "should have imported verification" do
    sign_in users(:one)
    put :import, import: "2011-09-05	2011-09-05	987123987 	DescriptionOne /11-09-03 	-78,00 	2.460,59"
    assert Verification.where(:verification_id => '987123987').count == 1, "Import failed, count: " + Verification.where(:verification_id => '987123987').count.to_s
  end

  test "autocategorized imported verifications should set pattern" do
    sign_in users(:one)
    put :import, import: "2011-09-05	2011-09-05	987123987 	DescriptionOne /11-09-03 	-78,00 	2.460,59"
    assert Verification.where(:verification_id => '987123987').first.category == "CategoryOne", "Imported verification category differs from expected: CategoryOne != " + Verification.where(:verification_id => '987123987').first.category.to_s
    assert Verification.where(:verification_id => '987123987').first.pattern_id != nil, "Imported verification pattern should not be nil"
  end

  test "pivot lastyear should show data for last month" do
    sign_in users(:dull)
    get :pivot, {:DateRange => 'LastYear', :format => :json}
    assert_response :success
    pivot = JSON.parse(@response.body)
    assert pivot["data"][0].length == 12, "Should have returned 12 months of data, got only " + pivot["data"][0].length.to_s
    assert pivot["data"][0].min > 0, "Should have positive values for all months - " + pivot["data"][0].to_s
  end
end
