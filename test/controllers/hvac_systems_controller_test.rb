require 'test_helper'

class HvacSystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hvac_system = hvac_systems(:one)
  end

  test "should get index" do
    get hvac_systems_url
    assert_response :success
  end

  test "should get new" do
    get new_hvac_system_url
    assert_response :success
  end

  test "should create hvac_system" do
    assert_difference('HvacSystem.count') do
      post hvac_systems_url, params: { hvac_system: { aux_energy_corr: @hvac_system.aux_energy_corr, cen_time_ctrl: @hvac_system.cen_time_ctrl, chiller_type: @hvac_system.chiller_type, chp: @hvac_system.chp, cool_gen_eer: @hvac_system.cool_gen_eer, cool_gen_seer: @hvac_system.cool_gen_seer, cool_sseer: @hvac_system.cool_sseer, dhw_served_ref: @hvac_system.dhw_served_ref, duct_leakage_pc: @hvac_system.duct_leakage_pc, eff_default_cool: @hvac_system.eff_default_cool, eff_default_heat: @hvac_system.eff_default_heat, fuel_type: @hvac_system.fuel_type, fuel_type_cool: @hvac_system.fuel_type_cool, heat_gen_seff: @hvac_system.heat_gen_seff, heat_rec_seff: @hvac_system.heat_rec_seff, heat_rec_system: @hvac_system.heat_rec_system, heat_rec_var_eff: @hvac_system.heat_rec_var_eff, heat_source: @hvac_system.heat_source, heat_sseff: @hvac_system.heat_sseff, isbem_id: @hvac_system.isbem_id, metering: @hvac_system.metering, mixed_mode: @hvac_system.mixed_mode, object_name: @hvac_system.object_name, optimum_start: @hvac_system.optimum_start, room_temp_ctrl: @hvac_system.room_temp_ctrl, room_time_ctrl: @hvac_system.room_time_ctrl, sfp: @hvac_system.sfp, sfp_check: @hvac_system.sfp_check, type_0: @hvac_system.type_0, variable_speed_pump: @hvac_system.variable_speed_pump, weather_comp: @hvac_system.weather_comp } }
    end

    assert_redirected_to hvac_system_url(HvacSystem.last)
  end

  test "should show hvac_system" do
    get hvac_system_url(@hvac_system)
    assert_response :success
  end

  test "should get edit" do
    get edit_hvac_system_url(@hvac_system)
    assert_response :success
  end

  test "should update hvac_system" do
    patch hvac_system_url(@hvac_system), params: { hvac_system: { aux_energy_corr: @hvac_system.aux_energy_corr, cen_time_ctrl: @hvac_system.cen_time_ctrl, chiller_type: @hvac_system.chiller_type, chp: @hvac_system.chp, cool_gen_eer: @hvac_system.cool_gen_eer, cool_gen_seer: @hvac_system.cool_gen_seer, cool_sseer: @hvac_system.cool_sseer, dhw_served_ref: @hvac_system.dhw_served_ref, duct_leakage_pc: @hvac_system.duct_leakage_pc, eff_default_cool: @hvac_system.eff_default_cool, eff_default_heat: @hvac_system.eff_default_heat, fuel_type: @hvac_system.fuel_type, fuel_type_cool: @hvac_system.fuel_type_cool, heat_gen_seff: @hvac_system.heat_gen_seff, heat_rec_seff: @hvac_system.heat_rec_seff, heat_rec_system: @hvac_system.heat_rec_system, heat_rec_var_eff: @hvac_system.heat_rec_var_eff, heat_source: @hvac_system.heat_source, heat_sseff: @hvac_system.heat_sseff, isbem_id: @hvac_system.isbem_id, metering: @hvac_system.metering, mixed_mode: @hvac_system.mixed_mode, object_name: @hvac_system.object_name, optimum_start: @hvac_system.optimum_start, room_temp_ctrl: @hvac_system.room_temp_ctrl, room_time_ctrl: @hvac_system.room_time_ctrl, sfp: @hvac_system.sfp, sfp_check: @hvac_system.sfp_check, type_0: @hvac_system.type_0, variable_speed_pump: @hvac_system.variable_speed_pump, weather_comp: @hvac_system.weather_comp } }
    assert_redirected_to hvac_system_url(@hvac_system)
  end

  test "should destroy hvac_system" do
    assert_difference('HvacSystem.count', -1) do
      delete hvac_system_url(@hvac_system)
    end

    assert_redirected_to hvac_systems_url
  end
end
