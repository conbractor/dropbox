require "application_system_test_case"

class ConstructionsTest < ApplicationSystemTestCase
  setup do
    @construction = constructions(:one)
  end

  test "visiting the index" do
    visit constructions_url
    assert_selector "h1", text: "Constructions"
  end

  test "creating a Construction" do
    visit constructions_url
    click_on "New Construction"

    fill_in "Cm", with: @construction.cm
    fill_in "Metal cladding", with: @construction.metal_cladding
    fill_in "Object name", with: @construction.object_name
    fill_in "Type 0", with: @construction.type_0
    fill_in "U value", with: @construction.u_value
    fill_in "U value corr", with: @construction.u_value_corr
    click_on "Create Construction"

    assert_text "Construction was successfully created"
    click_on "Back"
  end

  test "updating a Construction" do
    visit constructions_url
    click_on "Edit", match: :first

    fill_in "Cm", with: @construction.cm
    fill_in "Metal cladding", with: @construction.metal_cladding
    fill_in "Object name", with: @construction.object_name
    fill_in "Type 0", with: @construction.type_0
    fill_in "U value", with: @construction.u_value
    fill_in "U value corr", with: @construction.u_value_corr
    click_on "Update Construction"

    assert_text "Construction was successfully updated"
    click_on "Back"
  end

  test "destroying a Construction" do
    visit constructions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Construction was successfully destroyed"
  end
end
