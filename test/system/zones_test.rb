require "application_system_test_case"

class ZonesTest < ApplicationSystemTestCase
  setup do
    @zone = zones(:one)
  end

  test "visiting the index" do
    visit zones_url
    assert_selector "h1", text: "Zones"
  end

  test "creating a Zone" do
    visit zones_url
    click_on "New Zone"

    fill_in "Activity", with: @zone.activity
    fill_in "Activity name", with: @zone.activity_name
    fill_in "Area", with: @zone.area
    fill_in "Constant illum", with: @zone.constant_illum
    fill_in "Destrat fan", with: @zone.destrat_fan
    fill_in "Dhw generator", with: @zone.dhw_generator
    fill_in "Dhw pipe len", with: @zone.dhw_pipe_len
    fill_in "F ctrl vent dem", with: @zone.f_ctrl_vent_dem
    fill_in "Heat rec seff", with: @zone.heat_rec_seff
    fill_in "Heat rec system", with: @zone.heat_rec_system
    fill_in "Heat rec var eff", with: @zone.heat_rec_var_eff
    fill_in "Height", with: @zone.height
    fill_in "Hepa filter", with: @zone.hepa_filter
    fill_in "Isbem", with: @zone.isbem_id
    fill_in "Jnct accr detail", with: @zone.jnct_accr_detail
    fill_in "Jnct accr detail mc", with: @zone.jnct_accr_detail_mc
    fill_in "Jnct jamb", with: @zone.jnct_jamb
    fill_in "Jnct jamb mc", with: @zone.jnct_jamb_mc
    fill_in "Jnct lintel", with: @zone.jnct_lintel
    fill_in "Jnct lintel mc", with: @zone.jnct_lintel_mc
    fill_in "Jnct roof wall", with: @zone.jnct_roof_wall
    fill_in "Jnct roof wall mc", with: @zone.jnct_roof_wall_mc
    fill_in "Jnct sill", with: @zone.jnct_sill
    fill_in "Jnct sill mc", with: @zone.jnct_sill_mc
    fill_in "Jnct wall flr", with: @zone.jnct_wall_flr
    fill_in "Jnct wall flr mc", with: @zone.jnct_wall_flr_mc
    fill_in "Jnct wall grnd", with: @zone.jnct_wall_grnd
    fill_in "Jnct wall grnd mc", with: @zone.jnct_wall_grnd_mc
    fill_in "Jnct wall wall", with: @zone.jnct_wall_wall
    fill_in "Jnct wall wall mc", with: @zone.jnct_wall_wall_mc
    fill_in "Lamp ballast eff dl", with: @zone.lamp_ballast_eff_dl
    fill_in "Light act watt", with: @zone.light_act_watt
    fill_in "Light case", with: @zone.light_case
    fill_in "Light control", with: @zone.light_control
    fill_in "Light display eff", with: @zone.light_display_eff
    fill_in "Light dl area perc", with: @zone.light_dl_area_perc
    fill_in "Light dl aut zone", with: @zone.light_dl_aut_zone
    fill_in "Light lux design", with: @zone.light_lux_design
    fill_in "Light occ sens t", with: @zone.light_occ_sens_t
    fill_in "Light paras pw", with: @zone.light_paras_pw
    fill_in "Light paras pw occ", with: @zone.light_paras_pw_occ
    fill_in "Light ph back", with: @zone.light_ph_back
    fill_in "Light photo type", with: @zone.light_photo_type
    fill_in "Light time switch", with: @zone.light_time_switch
    fill_in "Light type", with: @zone.light_type
    fill_in "Multiplier", with: @zone.multiplier
    fill_in "Night cooling", with: @zone.night_cooling
    fill_in "Object name", with: @zone.object_name
    fill_in "Q50 inf", with: @zone.q50_inf
    fill_in "Q v m exh", with: @zone.q_v_m_exh
    fill_in "Q v type", with: @zone.q_v_type
    fill_in "Sfp tu", with: @zone.sfp_tu
    fill_in "Shell assumed", with: @zone.shell_assumed
    fill_in "Vent mech exh", with: @zone.vent_mech_exh
    fill_in "Vent mech exh ncm", with: @zone.vent_mech_exh_ncm
    fill_in "Vent sfp", with: @zone.vent_sfp
    fill_in "Vent sfp exh", with: @zone.vent_sfp_exh
    fill_in "Vent zone hvac", with: @zone.vent_zone_hvac
    click_on "Create Zone"

    assert_text "Zone was successfully created"
    click_on "Back"
  end

  test "updating a Zone" do
    visit zones_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @zone.activity
    fill_in "Activity name", with: @zone.activity_name
    fill_in "Area", with: @zone.area
    fill_in "Constant illum", with: @zone.constant_illum
    fill_in "Destrat fan", with: @zone.destrat_fan
    fill_in "Dhw generator", with: @zone.dhw_generator
    fill_in "Dhw pipe len", with: @zone.dhw_pipe_len
    fill_in "F ctrl vent dem", with: @zone.f_ctrl_vent_dem
    fill_in "Heat rec seff", with: @zone.heat_rec_seff
    fill_in "Heat rec system", with: @zone.heat_rec_system
    fill_in "Heat rec var eff", with: @zone.heat_rec_var_eff
    fill_in "Height", with: @zone.height
    fill_in "Hepa filter", with: @zone.hepa_filter
    fill_in "Isbem", with: @zone.isbem_id
    fill_in "Jnct accr detail", with: @zone.jnct_accr_detail
    fill_in "Jnct accr detail mc", with: @zone.jnct_accr_detail_mc
    fill_in "Jnct jamb", with: @zone.jnct_jamb
    fill_in "Jnct jamb mc", with: @zone.jnct_jamb_mc
    fill_in "Jnct lintel", with: @zone.jnct_lintel
    fill_in "Jnct lintel mc", with: @zone.jnct_lintel_mc
    fill_in "Jnct roof wall", with: @zone.jnct_roof_wall
    fill_in "Jnct roof wall mc", with: @zone.jnct_roof_wall_mc
    fill_in "Jnct sill", with: @zone.jnct_sill
    fill_in "Jnct sill mc", with: @zone.jnct_sill_mc
    fill_in "Jnct wall flr", with: @zone.jnct_wall_flr
    fill_in "Jnct wall flr mc", with: @zone.jnct_wall_flr_mc
    fill_in "Jnct wall grnd", with: @zone.jnct_wall_grnd
    fill_in "Jnct wall grnd mc", with: @zone.jnct_wall_grnd_mc
    fill_in "Jnct wall wall", with: @zone.jnct_wall_wall
    fill_in "Jnct wall wall mc", with: @zone.jnct_wall_wall_mc
    fill_in "Lamp ballast eff dl", with: @zone.lamp_ballast_eff_dl
    fill_in "Light act watt", with: @zone.light_act_watt
    fill_in "Light case", with: @zone.light_case
    fill_in "Light control", with: @zone.light_control
    fill_in "Light display eff", with: @zone.light_display_eff
    fill_in "Light dl area perc", with: @zone.light_dl_area_perc
    fill_in "Light dl aut zone", with: @zone.light_dl_aut_zone
    fill_in "Light lux design", with: @zone.light_lux_design
    fill_in "Light occ sens t", with: @zone.light_occ_sens_t
    fill_in "Light paras pw", with: @zone.light_paras_pw
    fill_in "Light paras pw occ", with: @zone.light_paras_pw_occ
    fill_in "Light ph back", with: @zone.light_ph_back
    fill_in "Light photo type", with: @zone.light_photo_type
    fill_in "Light time switch", with: @zone.light_time_switch
    fill_in "Light type", with: @zone.light_type
    fill_in "Multiplier", with: @zone.multiplier
    fill_in "Night cooling", with: @zone.night_cooling
    fill_in "Object name", with: @zone.object_name
    fill_in "Q50 inf", with: @zone.q50_inf
    fill_in "Q v m exh", with: @zone.q_v_m_exh
    fill_in "Q v type", with: @zone.q_v_type
    fill_in "Sfp tu", with: @zone.sfp_tu
    fill_in "Shell assumed", with: @zone.shell_assumed
    fill_in "Vent mech exh", with: @zone.vent_mech_exh
    fill_in "Vent mech exh ncm", with: @zone.vent_mech_exh_ncm
    fill_in "Vent sfp", with: @zone.vent_sfp
    fill_in "Vent sfp exh", with: @zone.vent_sfp_exh
    fill_in "Vent zone hvac", with: @zone.vent_zone_hvac
    click_on "Update Zone"

    assert_text "Zone was successfully updated"
    click_on "Back"
  end

  test "destroying a Zone" do
    visit zones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zone was successfully destroyed"
  end
end
