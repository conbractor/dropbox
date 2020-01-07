require 'test_helper'

class WindowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @window = windows(:one)
  end

  test "should get index" do
    get windows_url
    assert_response :success
  end

  test "should get new" do
    get new_window_url
    assert_response :success
  end

  test "should create window" do
    assert_difference('Window.count') do
      post windows_url, params: { window: { area: @window.area, aspect_ratio: @window.aspect_ratio, brise_soleil: @window.brise_soleil, dev_proj_ratio: @window.dev_proj_ratio, disp_wind: @window.disp_wind, frame_factor: @window.frame_factor, glass: @window.glass, multiplier: @window.multiplier, object_name: @window.object_name, roof_light_cover: @window.roof_light_cover, shading_colour: @window.shading_colour, shading_factor: @window.shading_factor, shading_position: @window.shading_position, shading_translucency: @window.shading_translucency } }
    end

    assert_redirected_to window_url(Window.last)
  end

  test "should show window" do
    get window_url(@window)
    assert_response :success
  end

  test "should get edit" do
    get edit_window_url(@window)
    assert_response :success
  end

  test "should update window" do
    patch window_url(@window), params: { window: { area: @window.area, aspect_ratio: @window.aspect_ratio, brise_soleil: @window.brise_soleil, dev_proj_ratio: @window.dev_proj_ratio, disp_wind: @window.disp_wind, frame_factor: @window.frame_factor, glass: @window.glass, multiplier: @window.multiplier, object_name: @window.object_name, roof_light_cover: @window.roof_light_cover, shading_colour: @window.shading_colour, shading_factor: @window.shading_factor, shading_position: @window.shading_position, shading_translucency: @window.shading_translucency } }
    assert_redirected_to window_url(@window)
  end

  test "should destroy window" do
    assert_difference('Window.count', -1) do
      delete window_url(@window)
    end

    assert_redirected_to windows_url
  end
end
