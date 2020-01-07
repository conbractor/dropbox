require "application_system_test_case"

class HvacSystemsTest < ApplicationSystemTestCase
  setup do
    @hvac_system = hvac_systems(:one)
  end

  test "visiting the index" do
    visit hvac_systems_url
    assert_selector "h1", text: "Hvac Systems"
  end

  test "creating a Hvac system" do
    visit hvac_systems_url
    click_on "New Hvac System"

    fill_in "Aux energy corr", with: @hvac_system.aux_energy_corr
    fill_in "Cen time ctrl", with: @hvac_system.cen_time_ctrl
    fill_in "Chiller type", with: @hvac_system.chiller_type
    fill_in "Chp", with: @hvac_system.chp
    fill_in "Cool gen eer", with: @hvac_system.cool_gen_eer
    fill_in "Cool gen seer", with: @hvac_system.cool_gen_seer
    fill_in "Cool sseer", with: @hvac_system.cool_sseer
    fill_in "Dhw served ref", with: @hvac_system.dhw_served_ref
    fill_in "Duct leakage pc", with: @hvac_system.duct_leakage_pc
    fill_in "Eff default cool", with: @hvac_system.eff_default_cool
    fill_in "Eff default heat", with: @hvac_system.eff_default_heat
    fill_in "Fuel type", with: @hvac_system.fuel_type
    fill_in "Fuel type cool", with: @hvac_system.fuel_type_cool
    fill_in "Heat gen seff", with: @hvac_system.heat_gen_seff
    fill_in "Heat rec seff", with: @hvac_system.heat_rec_seff
    fill_in "Heat rec system", with: @hvac_system.heat_rec_system
    fill_in "Heat rec var eff", with: @hvac_system.heat_rec_var_eff
    fill_in "Heat source", with: @hvac_system.heat_source
    fill_in "Heat sseff", with: @hvac_system.heat_sseff
    fill_in "Isbem", with: @hvac_system.isbem_id
    fill_in "Metering", with: @hvac_system.metering
    fill_in "Mixed mode", with: @hvac_system.mixed_mode
    fill_in "Object name", with: @hvac_system.object_name
    fill_in "Optimum start", with: @hvac_system.optimum_start
    fill_in "Room temp ctrl", with: @hvac_system.room_temp_ctrl
    fill_in "Room time ctrl", with: @hvac_system.room_time_ctrl
    fill_in "Sfp", with: @hvac_system.sfp
    fill_in "Sfp check", with: @hvac_system.sfp_check
    fill_in "Type 0", with: @hvac_system.type_0
    fill_in "Variable speed pump", with: @hvac_system.variable_speed_pump
    fill_in "Weather comp", with: @hvac_system.weather_comp
    click_on "Create Hvac system"

    assert_text "Hvac system was successfully created"
    click_on "Back"
  end

  test "updating a Hvac system" do
    visit hvac_systems_url
    click_on "Edit", match: :first

    fill_in "Aux energy corr", with: @hvac_system.aux_energy_corr
    fill_in "Cen time ctrl", with: @hvac_system.cen_time_ctrl
    fill_in "Chiller type", with: @hvac_system.chiller_type
    fill_in "Chp", with: @hvac_system.chp
    fill_in "Cool gen eer", with: @hvac_system.cool_gen_eer
    fill_in "Cool gen seer", with: @hvac_system.cool_gen_seer
    fill_in "Cool sseer", with: @hvac_system.cool_sseer
    fill_in "Dhw served ref", with: @hvac_system.dhw_served_ref
    fill_in "Duct leakage pc", with: @hvac_system.duct_leakage_pc
    fill_in "Eff default cool", with: @hvac_system.eff_default_cool
    fill_in "Eff default heat", with: @hvac_system.eff_default_heat
    fill_in "Fuel type", with: @hvac_system.fuel_type
    fill_in "Fuel type cool", with: @hvac_system.fuel_type_cool
    fill_in "Heat gen seff", with: @hvac_system.heat_gen_seff
    fill_in "Heat rec seff", with: @hvac_system.heat_rec_seff
    fill_in "Heat rec system", with: @hvac_system.heat_rec_system
    fill_in "Heat rec var eff", with: @hvac_system.heat_rec_var_eff
    fill_in "Heat source", with: @hvac_system.heat_source
    fill_in "Heat sseff", with: @hvac_system.heat_sseff
    fill_in "Isbem", with: @hvac_system.isbem_id
    fill_in "Metering", with: @hvac_system.metering
    fill_in "Mixed mode", with: @hvac_system.mixed_mode
    fill_in "Object name", with: @hvac_system.object_name
    fill_in "Optimum start", with: @hvac_system.optimum_start
    fill_in "Room temp ctrl", with: @hvac_system.room_temp_ctrl
    fill_in "Room time ctrl", with: @hvac_system.room_time_ctrl
    fill_in "Sfp", with: @hvac_system.sfp
    fill_in "Sfp check", with: @hvac_system.sfp_check
    fill_in "Type 0", with: @hvac_system.type_0
    fill_in "Variable speed pump", with: @hvac_system.variable_speed_pump
    fill_in "Weather comp", with: @hvac_system.weather_comp
    click_on "Update Hvac system"

    assert_text "Hvac system was successfully updated"
    click_on "Back"
  end

  test "destroying a Hvac system" do
    visit hvac_systems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hvac system was successfully destroyed"
  end
end
