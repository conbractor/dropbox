require "application_system_test_case"

class WallsTest < ApplicationSystemTestCase
  setup do
    @wall = walls(:one)
  end

  test "visiting the index" do
    visit walls_url
    assert_selector "h1", text: "Walls"
  end

  test "creating a Wall" do
    visit walls_url
    click_on "New Wall"

    fill_in "Area", with: @wall.area
    fill_in "Construction", with: @wall.construction
    fill_in "Length", with: @wall.length
    fill_in "Multiplier", with: @wall.multiplier
    fill_in "Object name", with: @wall.object_name
    fill_in "Orientation", with: @wall.orientation
    fill_in "Pitch", with: @wall.pitch
    fill_in "Type 0", with: @wall.type_0
    fill_in "Type env", with: @wall.type_env
    click_on "Create Wall"

    assert_text "Wall was successfully created"
    click_on "Back"
  end

  test "updating a Wall" do
    visit walls_url
    click_on "Edit", match: :first

    fill_in "Area", with: @wall.area
    fill_in "Construction", with: @wall.construction
    fill_in "Length", with: @wall.length
    fill_in "Multiplier", with: @wall.multiplier
    fill_in "Object name", with: @wall.object_name
    fill_in "Orientation", with: @wall.orientation
    fill_in "Pitch", with: @wall.pitch
    fill_in "Type 0", with: @wall.type_0
    fill_in "Type env", with: @wall.type_env
    click_on "Update Wall"

    assert_text "Wall was successfully updated"
    click_on "Back"
  end

  test "destroying a Wall" do
    visit walls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wall was successfully destroyed"
  end
end
