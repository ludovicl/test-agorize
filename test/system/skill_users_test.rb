require "application_system_test_case"

class SkillsUsersTest < ApplicationSystemTestCase
  setup do
    @skills_users = skills_users(:one)
  end

  test "visiting the index" do
    visit skills_users_url
    assert_selector "h1", text: "Skill Users"
  end

  test "creating a Skill user" do
    visit skills_users_url
    click_on "New Skill User"

    fill_in "Skill", with: @skills_users.skill_id
    fill_in "User", with: @skills_users.user_id
    click_on "Create Skill user"

    assert_text "Skill user was successfully created"
    click_on "Back"
  end

  test "updating a Skill user" do
    visit skills_users_url
    click_on "Edit", match: :first

    fill_in "Skill", with: @skills_users.skill_id
    fill_in "User", with: @skills_users.user_id
    click_on "Update Skill user"

    assert_text "Skill user was successfully updated"
    click_on "Back"
  end

  test "destroying a Skill user" do
    visit skills_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Skill user was successfully destroyed"
  end
end
