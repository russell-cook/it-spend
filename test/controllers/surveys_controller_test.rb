require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { access_control: @survey.access_control, backup: @survey.backup, central_backup: @survey.central_backup, colocated: @survey.colocated, completing_email: @survey.completing_email, completing_name: @survey.completing_name, completing_title: @survey.completing_title, contact_email: @survey.contact_email, contact_name: @survey.contact_name, contact_title: @survey.contact_title, contractor_support: @survey.contractor_support, contractor_support_amt: @survey.contractor_support_amt, data_san: @survey.data_san, data_server: @survey.data_server, dedicated: @survey.dedicated, envir_ctrl: @survey.envir_ctrl, fire: @survey.fire, freq_backup: @survey.freq_backup, freq_backup_other: @survey.freq_backup_other, generator: @survey.generator, hard_maint: @survey.hard_maint, hard_maint_amt: @survey.hard_maint_amt, leased: @survey.leased, leased_sqft: @survey.leased_sqft, local_backup: @survey.local_backup, num_locations: @survey.num_locations, num_servers: @survey.num_servers, soft_maint: @survey.soft_maint, soft_maint_amt: @survey.soft_maint_amt, state_owned: @survey.state_owned, state_owned_sqft: @survey.state_owned_sqft, total_capacity: @survey.total_capacity, type_servers: @survey.type_servers, ups: @survey.ups, used_capacity: @survey.used_capacity, who_manages: @survey.who_manages, who_manages_other: @survey.who_manages_other }
    end

    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should show survey" do
    get :show, id: @survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey
    assert_response :success
  end

  test "should update survey" do
    patch :update, id: @survey, survey: { access_control: @survey.access_control, backup: @survey.backup, central_backup: @survey.central_backup, colocated: @survey.colocated, completing_email: @survey.completing_email, completing_name: @survey.completing_name, completing_title: @survey.completing_title, contact_email: @survey.contact_email, contact_name: @survey.contact_name, contact_title: @survey.contact_title, contractor_support: @survey.contractor_support, contractor_support_amt: @survey.contractor_support_amt, data_san: @survey.data_san, data_server: @survey.data_server, dedicated: @survey.dedicated, envir_ctrl: @survey.envir_ctrl, fire: @survey.fire, freq_backup: @survey.freq_backup, freq_backup_other: @survey.freq_backup_other, generator: @survey.generator, hard_maint: @survey.hard_maint, hard_maint_amt: @survey.hard_maint_amt, leased: @survey.leased, leased_sqft: @survey.leased_sqft, local_backup: @survey.local_backup, num_locations: @survey.num_locations, num_servers: @survey.num_servers, soft_maint: @survey.soft_maint, soft_maint_amt: @survey.soft_maint_amt, state_owned: @survey.state_owned, state_owned_sqft: @survey.state_owned_sqft, total_capacity: @survey.total_capacity, type_servers: @survey.type_servers, ups: @survey.ups, used_capacity: @survey.used_capacity, who_manages: @survey.who_manages, who_manages_other: @survey.who_manages_other }
    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_redirected_to surveys_path
  end
end
