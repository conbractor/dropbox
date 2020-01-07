require 'test_helper'

class ZonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zone = zones(:one)
  end

  test "should get index" do
    get zones_url
    assert_response :success
  end

  test "should get new" do
    get new_zone_url
    assert_response :success
  end

  test "should create zone" do
    assert_difference('Zone.count') do
      post zones_url, params: { zone: { activity: @zone.activity, activity_name: @zone.activity_name, area: @zone.area, constant_illum: @zone.constant_illum, destrat_fan: @zone.destrat_fan, dhw_generator: @zone.dhw_generator, dhw_pipe_len: @zone.dhw_pipe_len, f_ctrl_vent_dem: @zone.f_ctrl_vent_dem, heat_rec_seff: @zone.heat_rec_seff, heat_rec_system: @zone.heat_rec_system, heat_rec_var_eff: @zone.heat_rec_var_eff, height: @zone.height, hepa_filter: @zone.hepa_filter, isbem_id: @zone.isbem_id, jnct_accr_detail: @zone.jnct_accr_detail, jnct_accr_detail_mc: @zone.jnct_accr_detail_mc, jnct_jamb: @zone.jnct_jamb, jnct_jamb_mc: @zone.jnct_jamb_mc, jnct_lintel: @zone.jnct_lintel, jnct_lintel_mc: @zone.jnct_lintel_mc, jnct_roof_wall: @zone.jnct_roof_wall, jnct_roof_wall_mc: @zone.jnct_roof_wall_mc, jnct_sill: @zone.jnct_sill, jnct_sill_mc: @zone.jnct_sill_mc, jnct_wall_flr: @zone.jnct_wall_flr, jnct_wall_flr_mc: @zone.jnct_wall_flr_mc, jnct_wall_grnd: @zone.jnct_wall_grnd, jnct_wall_grnd_mc: @zone.jnct_wall_grnd_mc, jnct_wall_wall: @zone.jnct_wall_wall, jnct_wall_wall_mc: @zone.jnct_wall_wall_mc, lamp_ballast_eff_dl: @zone.lamp_ballast_eff_dl, light_act_watt: @zone.light_act_watt, light_case: @zone.light_case, light_control: @zone.light_control, light_display_eff: @zone.light_display_eff, light_dl_area_perc: @zone.light_dl_area_perc, light_dl_aut_zone: @zone.light_dl_aut_zone, light_lux_design: @zone.light_lux_design, light_occ_sens_t: @zone.light_occ_sens_t, light_paras_pw: @zone.light_paras_pw, light_paras_pw_occ: @zone.light_paras_pw_occ, light_ph_back: @zone.light_ph_back, light_photo_type: @zone.light_photo_type, light_time_switch: @zone.light_time_switch, light_type: @zone.light_type, multiplier: @zone.multiplier, night_cooling: @zone.night_cooling, object_name: @zone.object_name, q50_inf: @zone.q50_inf, q_v_m_exh: @zone.q_v_m_exh, q_v_type: @zone.q_v_type, sfp_tu: @zone.sfp_tu, shell_assumed: @zone.shell_assumed, vent_mech_exh: @zone.vent_mech_exh, vent_mech_exh_ncm: @zone.vent_mech_exh_ncm, vent_sfp: @zone.vent_sfp, vent_sfp_exh: @zone.vent_sfp_exh, vent_zone_hvac: @zone.vent_zone_hvac } }
    end

    assert_redirected_to zone_url(Zone.last)
  end

  test "should show zone" do
    get zone_url(@zone)
    assert_response :success
  end

  test "should get edit" do
    get edit_zone_url(@zone)
    assert_response :success
  end

  test "should update zone" do
    patch zone_url(@zone), params: { zone: { activity: @zone.activity, activity_name: @zone.activity_name, area: @zone.area, constant_illum: @zone.constant_illum, destrat_fan: @zone.destrat_fan, dhw_generator: @zone.dhw_generator, dhw_pipe_len: @zone.dhw_pipe_len, f_ctrl_vent_dem: @zone.f_ctrl_vent_dem, heat_rec_seff: @zone.heat_rec_seff, heat_rec_system: @zone.heat_rec_system, heat_rec_var_eff: @zone.heat_rec_var_eff, height: @zone.height, hepa_filter: @zone.hepa_filter, isbem_id: @zone.isbem_id, jnct_accr_detail: @zone.jnct_accr_detail, jnct_accr_detail_mc: @zone.jnct_accr_detail_mc, jnct_jamb: @zone.jnct_jamb, jnct_jamb_mc: @zone.jnct_jamb_mc, jnct_lintel: @zone.jnct_lintel, jnct_lintel_mc: @zone.jnct_lintel_mc, jnct_roof_wall: @zone.jnct_roof_wall, jnct_roof_wall_mc: @zone.jnct_roof_wall_mc, jnct_sill: @zone.jnct_sill, jnct_sill_mc: @zone.jnct_sill_mc, jnct_wall_flr: @zone.jnct_wall_flr, jnct_wall_flr_mc: @zone.jnct_wall_flr_mc, jnct_wall_grnd: @zone.jnct_wall_grnd, jnct_wall_grnd_mc: @zone.jnct_wall_grnd_mc, jnct_wall_wall: @zone.jnct_wall_wall, jnct_wall_wall_mc: @zone.jnct_wall_wall_mc, lamp_ballast_eff_dl: @zone.lamp_ballast_eff_dl, light_act_watt: @zone.light_act_watt, light_case: @zone.light_case, light_control: @zone.light_control, light_display_eff: @zone.light_display_eff, light_dl_area_perc: @zone.light_dl_area_perc, light_dl_aut_zone: @zone.light_dl_aut_zone, light_lux_design: @zone.light_lux_design, light_occ_sens_t: @zone.light_occ_sens_t, light_paras_pw: @zone.light_paras_pw, light_paras_pw_occ: @zone.light_paras_pw_occ, light_ph_back: @zone.light_ph_back, light_photo_type: @zone.light_photo_type, light_time_switch: @zone.light_time_switch, light_type: @zone.light_type, multiplier: @zone.multiplier, night_cooling: @zone.night_cooling, object_name: @zone.object_name, q50_inf: @zone.q50_inf, q_v_m_exh: @zone.q_v_m_exh, q_v_type: @zone.q_v_type, sfp_tu: @zone.sfp_tu, shell_assumed: @zone.shell_assumed, vent_mech_exh: @zone.vent_mech_exh, vent_mech_exh_ncm: @zone.vent_mech_exh_ncm, vent_sfp: @zone.vent_sfp, vent_sfp_exh: @zone.vent_sfp_exh, vent_zone_hvac: @zone.vent_zone_hvac } }
    assert_redirected_to zone_url(@zone)
  end

  test "should destroy zone" do
    assert_difference('Zone.count', -1) do
      delete zone_url(@zone)
    end

    assert_redirected_to zones_url
  end
end
