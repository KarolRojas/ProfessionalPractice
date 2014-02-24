require 'test_helper'

class ProjectProfilesControllerTest < ActionController::TestCase
  setup do
    @project_profile = project_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_profile" do
    assert_difference('ProjectProfile.count') do
      post :create, project_profile: { context: @project_profile.context, description: @project_profile.description, disciplines: @project_profile.disciplines, institution_name: @project_profile.institution_name, name: @project_profile.name, objectives: @project_profile.objectives, region: @project_profile.region, scale: @project_profile.scale, validity: @project_profile.validity }
    end

    assert_redirected_to project_profile_path(assigns(:project_profile))
  end

  test "should show project_profile" do
    get :show, id: @project_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_profile
    assert_response :success
  end

  test "should update project_profile" do
    patch :update, id: @project_profile, project_profile: { context: @project_profile.context, description: @project_profile.description, disciplines: @project_profile.disciplines, institution_name: @project_profile.institution_name, name: @project_profile.name, objectives: @project_profile.objectives, region: @project_profile.region, scale: @project_profile.scale, validity: @project_profile.validity }
    assert_redirected_to project_profile_path(assigns(:project_profile))
  end

  test "should destroy project_profile" do
    assert_difference('ProjectProfile.count', -1) do
      delete :destroy, id: @project_profile
    end

    assert_redirected_to project_profiles_path
  end
end
