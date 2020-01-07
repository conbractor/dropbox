require "application_system_test_case"

class WindowsTest < ApplicationSystemTestCase
  setup do
    @window = windows(:one)
  end

  test "visiting the index" do
    visit windows_url
    assert_selector "h1", text: "Windows"
  end

  test "creating a Window" do
    visit windows_url
    click_on "New Window"

    fill_in "Area", with: @window.area
    fill_in "Aspect ratio", with: @window.aspect_ratio
    fill_in "Brise soleil", with: @window.brise_soleil
    fill_in "Dev proj ratio", with: @window.dev_proj_ratio
    fill_in "Disp wind", with: @window.disp_wind
    fill_in "Frame factor", with: @window.frame_factor
    fill_in "Glass", with: @window.glass
    fill_in "Multiplier", with: @window.multiplier
    fill_in "Object name", with: @window.object_name
    fill_in "Roof light cover", with: @window.roof_light_cover
    fill_in "Shading colour", with: @window.shading_colour
    fill_in "Shading factor", with: @window.shading_factor
    fill_in "Shading position", with: @window.shading_position
    fill_in "Shading translucency", with: @window.shading_translucency
    click_on "Create Window"

    assert_text "Window was successfully created"
    click_on "Back"
  end

  test "updating a Window" do
    visit windows_url
    click_on "Edit", match: :first

    fill_in "Area", with: @window.area
    fill_in "Aspect ratio", with: @window.aspect_ratio
    fill_in "Brise soleil", with: @window.brise_soleil
    fill_in "Dev proj ratio", with: @window.dev_proj_ratio
    fill_in "Disp wind", with: @window.disp_wind
    fill_in "Frame factor", with: @window.frame_factor
    fill_in "Glass", with: @window.glass
    fill_in "Multiplier", with: @window.multiplier
    fill_in "Object name", with: @window.object_name
    fill_in "Roof light cover", with: @window.roof_light_cover
    fill_in "Shading colour", with: @window.shading_colour
    fill_in "Shading factor", with: @window.shading_factor
    fill_in "Shading position", with: @window.shading_position
    fill_in "Shading translucency", with: @window.shading_translucency
    click_on "Update Window"

    assert_text "Window was successfully updated"
    click_on "Back"
  end

  test "destroying a Window" do
    visit windows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Window was successfully destroyed"
  end
end
