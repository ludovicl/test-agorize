require 'test_helper'

class SkillsUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skills_users = skills_users(:one)
  end

  test "should get index" do
    get skills_users_url
    assert_response :success
  end

  test "should get new" do
    get new_skills_users_url
    assert_response :success
  end

  test "should create skills_users" do
    assert_difference('SkillsUser.count') do
      post skills_users_url, params: { skills_users: { skill_id: @skills_users.skill_id, user_id: @skills_users.user_id } }
    end

    assert_redirected_to skills_users_url(SkillsUser.last)
  end

  test "should show skills_users" do
    get skills_users_url(@skills_users)
    assert_response :success
  end

  test "should get edit" do
    get edit_skills_users_url(@skills_users)
    assert_response :success
  end

  test "should update skills_users" do
    patch skills_users_url(@skills_users), params: { skills_users: { skill_id: @skills_users.skill_id, user_id: @skills_users.user_id } }
    assert_redirected_to skills_users_url(@skills_users)
  end

  test "should destroy skills_users" do
    assert_difference('SkillsUser.count', -1) do
      delete skills_users_url(@skills_users)
    end

    assert_redirected_to skills_users_url
  end
end
