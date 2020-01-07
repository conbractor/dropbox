require "application_system_test_case"

class GlassesTest < ApplicationSystemTestCase
  setup do
    @glass = glasses(:one)
  end

  test "visiting the index" do
    visit glasses_url
    assert_selector "h1", text: "Glasses"
  end

  test "creating a Glass" do
    visit glasses_url
    click_on "New Glass"

    fill_in "Lig sol trans", with: @glass.lig_sol_trans
    fill_in "Object name", with: @glass.object_name
    fill_in "Tot sol trans", with: @glass.tot_sol_trans
    fill_in "U value", with: @glass.u_value
    click_on "Create Glass"

    assert_text "Glass was successfully created"
    click_on "Back"
  end

  test "updating a Glass" do
    visit glasses_url
    click_on "Edit", match: :first

    fill_in "Lig sol trans", with: @glass.lig_sol_trans
    fill_in "Object name", with: @glass.object_name
    fill_in "Tot sol trans", with: @glass.tot_sol_trans
    fill_in "U value", with: @glass.u_value
    click_on "Update Glass"

    assert_text "Glass was successfully updated"
    click_on "Back"
  end

  test "destroying a Glass" do
    visit glasses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Glass was successfully destroyed"
  end
end
