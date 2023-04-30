require "test_helper"

class Api::V1::ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get api_v1_profiles_url, as: :json
    assert_response :success
  end

  test "should create profile" do
    assert_difference("Profile.count") do
      post api_v1_profiles_url, params: { profile: { active: @profile.active, age: @profile.age, bio: @profile.bio, birthday: @profile.birthday, first_name: @profile.first_name, followers: @profile.followers, following: @profile.following, headline: @profile.headline, last_name: @profile.last_name, logged_in_at: @profile.logged_in_at, logged_out_at: @profile.logged_out_at, middle_name: @profile.middle_name, profile_image: @profile.profile_image, user_id: @profile.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show profile" do
    get api_v1_profile_url(@profile), as: :json
    assert_response :success
  end

  test "should update profile" do
    patch api_v1_profile_url(@profile), params: { profile: { active: @profile.active, age: @profile.age, bio: @profile.bio, birthday: @profile.birthday, first_name: @profile.first_name, followers: @profile.followers, following: @profile.following, headline: @profile.headline, last_name: @profile.last_name, logged_in_at: @profile.logged_in_at, logged_out_at: @profile.logged_out_at, middle_name: @profile.middle_name, profile_image: @profile.profile_image, user_id: @profile.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy profile" do
    assert_difference("Profile.count", -1) do
      delete api_v1_profile_url(@profile), as: :json
    end

    assert_response :no_content
  end
end
