require "application_system_test_case"

class RecUsersTest < ApplicationSystemTestCase
  setup do
    @rec_user = rec_users(:one)
  end

  test "visiting the index" do
    visit rec_users_url
    assert_selector "h1", text: "Rec Users"
  end

  test "creating a Rec user" do
    visit rec_users_url
    click_on "New Rec User"

    fill_in "Code", with: @rec_user.code
    fill_in "Object name", with: @rec_user.object_name
    fill_in "Rec comment", with: @rec_user.rec_comment
    fill_in "User in out", with: @rec_user.user_in_out
    click_on "Create Rec user"

    assert_text "Rec user was successfully created"
    click_on "Back"
  end

  test "updating a Rec user" do
    visit rec_users_url
    click_on "Edit", match: :first

    fill_in "Code", with: @rec_user.code
    fill_in "Object name", with: @rec_user.object_name
    fill_in "Rec comment", with: @rec_user.rec_comment
    fill_in "User in out", with: @rec_user.user_in_out
    click_on "Update Rec user"

    assert_text "Rec user was successfully updated"
    click_on "Back"
  end

  test "destroying a Rec user" do
    visit rec_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rec user was successfully destroyed"
  end
end
