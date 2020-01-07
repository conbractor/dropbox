require 'test_helper'

class GeneralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @general = generals(:one)
  end

  test "should get index" do
    get generals_url
    assert_response :success
  end

  test "should get new" do
    get new_general_url
    assert_response :success
  end

  test "should create general" do
    assert_difference('General.count') do
      post generals_url, params: { general: { act_not: @general.act_not, b_address_0: @general.b_address_0, b_address_1: @general.b_address_1, b_address_2: @general.b_address_2, b_address_3: @general.b_address_3, b_city: @general.b_city, b_insp_date: @general.b_insp_date, b_loc_description: @general.b_loc_description, b_postcode: @general.b_postcode, b_type: @general.b_type, build_orientation: @general.build_orientation, building_area: @general.building_area, c_accred_scheme: @general.c_accred_scheme, c_accred_scheme_web: @general.c_accred_scheme_web, c_address: @general.c_address, c_city: @general.c_city, c_email: @general.c_email, c_emp_trad_address: @general.c_emp_trad_address, c_emp_trad_name: @general.c_emp_trad_name, c_emp_trad_number: @general.c_emp_trad_number, c_ins_eff_date: @general.c_ins_eff_date, c_ins_exp_date: @general.c_ins_exp_date, c_ins_pi_limit: @general.c_ins_pi_limit, c_ins_pol_number: @general.c_ins_pol_number, c_insurer: @general.c_insurer, c_name: @general.c_name, c_postcode: @general.c_postcode, c_qualifications: @general.c_qualifications, c_reg_number: @general.c_reg_number, c_reg_number_ir: @general.c_reg_number_ir, c_reg_number_s: @general.c_reg_number_s, c_rel_part_disc: @general.c_rel_part_disc, c_telephone: @general.c_telephone, dh_co2f: @general.dh_co2f, dh_primf: @general.dh_primf, elec_power_factor: @general.elec_power_factor, html_dr_reports: @general.html_dr_reports, interface: @general.interface, interface_val: @general.interface_val, interface_version: @general.interface_version, landmark_environment: @general.landmark_environment, light_metering: @general.light_metering, max_storey: @general.max_storey, nos_level: @general.nos_level, o_address: @general.o_address, o_city: @general.o_city, o_name: @general.o_name, o_postcode: @general.o_postcode, o_telephone: @general.o_telephone, object_name: @general.object_name, p_name: @general.p_name, path_file_interface: @general.path_file_interface, soft_comp_name: @general.soft_comp_name, transaction_type: @general.transaction_type, uprn: @general.uprn, weather: @general.weather } }
    end

    assert_redirected_to general_url(General.last)
  end

  test "should show general" do
    get general_url(@general)
    assert_response :success
  end

  test "should get edit" do
    get edit_general_url(@general)
    assert_response :success
  end

  test "should update general" do
    patch general_url(@general), params: { general: { act_not: @general.act_not, b_address_0: @general.b_address_0, b_address_1: @general.b_address_1, b_address_2: @general.b_address_2, b_address_3: @general.b_address_3, b_city: @general.b_city, b_insp_date: @general.b_insp_date, b_loc_description: @general.b_loc_description, b_postcode: @general.b_postcode, b_type: @general.b_type, build_orientation: @general.build_orientation, building_area: @general.building_area, c_accred_scheme: @general.c_accred_scheme, c_accred_scheme_web: @general.c_accred_scheme_web, c_address: @general.c_address, c_city: @general.c_city, c_email: @general.c_email, c_emp_trad_address: @general.c_emp_trad_address, c_emp_trad_name: @general.c_emp_trad_name, c_emp_trad_number: @general.c_emp_trad_number, c_ins_eff_date: @general.c_ins_eff_date, c_ins_exp_date: @general.c_ins_exp_date, c_ins_pi_limit: @general.c_ins_pi_limit, c_ins_pol_number: @general.c_ins_pol_number, c_insurer: @general.c_insurer, c_name: @general.c_name, c_postcode: @general.c_postcode, c_qualifications: @general.c_qualifications, c_reg_number: @general.c_reg_number, c_reg_number_ir: @general.c_reg_number_ir, c_reg_number_s: @general.c_reg_number_s, c_rel_part_disc: @general.c_rel_part_disc, c_telephone: @general.c_telephone, dh_co2f: @general.dh_co2f, dh_primf: @general.dh_primf, elec_power_factor: @general.elec_power_factor, html_dr_reports: @general.html_dr_reports, interface: @general.interface, interface_val: @general.interface_val, interface_version: @general.interface_version, landmark_environment: @general.landmark_environment, light_metering: @general.light_metering, max_storey: @general.max_storey, nos_level: @general.nos_level, o_address: @general.o_address, o_city: @general.o_city, o_name: @general.o_name, o_postcode: @general.o_postcode, o_telephone: @general.o_telephone, object_name: @general.object_name, p_name: @general.p_name, path_file_interface: @general.path_file_interface, soft_comp_name: @general.soft_comp_name, transaction_type: @general.transaction_type, uprn: @general.uprn, weather: @general.weather } }
    assert_redirected_to general_url(@general)
  end

  test "should destroy general" do
    assert_difference('General.count', -1) do
      delete general_url(@general)
    end

    assert_redirected_to generals_url
  end
end
