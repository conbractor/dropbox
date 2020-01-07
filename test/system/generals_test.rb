require "application_system_test_case"

class GeneralsTest < ApplicationSystemTestCase
  setup do
    @general = generals(:one)
  end

  test "visiting the index" do
    visit generals_url
    assert_selector "h1", text: "Generals"
  end

  test "creating a General" do
    visit generals_url
    click_on "New General"

    fill_in "Act not", with: @general.act_not
    fill_in "B address 0", with: @general.b_address_0
    fill_in "B address 1", with: @general.b_address_1
    fill_in "B address 2", with: @general.b_address_2
    fill_in "B address 3", with: @general.b_address_3
    fill_in "B city", with: @general.b_city
    fill_in "B insp date", with: @general.b_insp_date
    fill_in "B loc description", with: @general.b_loc_description
    fill_in "B postcode", with: @general.b_postcode
    fill_in "B type", with: @general.b_type
    fill_in "Build orientation", with: @general.build_orientation
    fill_in "Building area", with: @general.building_area
    fill_in "C accred scheme", with: @general.c_accred_scheme
    fill_in "C accred scheme web", with: @general.c_accred_scheme_web
    fill_in "C address", with: @general.c_address
    fill_in "C city", with: @general.c_city
    fill_in "C email", with: @general.c_email
    fill_in "C emp trad address", with: @general.c_emp_trad_address
    fill_in "C emp trad name", with: @general.c_emp_trad_name
    fill_in "C emp trad number", with: @general.c_emp_trad_number
    fill_in "C ins eff date", with: @general.c_ins_eff_date
    fill_in "C ins exp date", with: @general.c_ins_exp_date
    fill_in "C ins pi limit", with: @general.c_ins_pi_limit
    fill_in "C ins pol number", with: @general.c_ins_pol_number
    fill_in "C insurer", with: @general.c_insurer
    fill_in "C name", with: @general.c_name
    fill_in "C postcode", with: @general.c_postcode
    fill_in "C qualifications", with: @general.c_qualifications
    fill_in "C reg number", with: @general.c_reg_number
    fill_in "C reg number ir", with: @general.c_reg_number_ir
    fill_in "C reg number s", with: @general.c_reg_number_s
    fill_in "C rel part disc", with: @general.c_rel_part_disc
    fill_in "C telephone", with: @general.c_telephone
    fill_in "Dh co2f", with: @general.dh_co2f
    fill_in "Dh primf", with: @general.dh_primf
    fill_in "Elec power factor", with: @general.elec_power_factor
    fill_in "Html dr reports", with: @general.html_dr_reports
    fill_in "Interface", with: @general.interface
    fill_in "Interface val", with: @general.interface_val
    fill_in "Interface version", with: @general.interface_version
    fill_in "Landmark environment", with: @general.landmark_environment
    fill_in "Light metering", with: @general.light_metering
    fill_in "Max storey", with: @general.max_storey
    fill_in "Nos level", with: @general.nos_level
    fill_in "O address", with: @general.o_address
    fill_in "O city", with: @general.o_city
    fill_in "O name", with: @general.o_name
    fill_in "O postcode", with: @general.o_postcode
    fill_in "O telephone", with: @general.o_telephone
    fill_in "Object name", with: @general.object_name
    fill_in "P name", with: @general.p_name
    fill_in "Path file interface", with: @general.path_file_interface
    fill_in "Soft comp name", with: @general.soft_comp_name
    fill_in "Transaction type", with: @general.transaction_type
    fill_in "Uprn", with: @general.uprn
    fill_in "Weather", with: @general.weather
    click_on "Create General"

    assert_text "General was successfully created"
    click_on "Back"
  end

  test "updating a General" do
    visit generals_url
    click_on "Edit", match: :first

    fill_in "Act not", with: @general.act_not
    fill_in "B address 0", with: @general.b_address_0
    fill_in "B address 1", with: @general.b_address_1
    fill_in "B address 2", with: @general.b_address_2
    fill_in "B address 3", with: @general.b_address_3
    fill_in "B city", with: @general.b_city
    fill_in "B insp date", with: @general.b_insp_date
    fill_in "B loc description", with: @general.b_loc_description
    fill_in "B postcode", with: @general.b_postcode
    fill_in "B type", with: @general.b_type
    fill_in "Build orientation", with: @general.build_orientation
    fill_in "Building area", with: @general.building_area
    fill_in "C accred scheme", with: @general.c_accred_scheme
    fill_in "C accred scheme web", with: @general.c_accred_scheme_web
    fill_in "C address", with: @general.c_address
    fill_in "C city", with: @general.c_city
    fill_in "C email", with: @general.c_email
    fill_in "C emp trad address", with: @general.c_emp_trad_address
    fill_in "C emp trad name", with: @general.c_emp_trad_name
    fill_in "C emp trad number", with: @general.c_emp_trad_number
    fill_in "C ins eff date", with: @general.c_ins_eff_date
    fill_in "C ins exp date", with: @general.c_ins_exp_date
    fill_in "C ins pi limit", with: @general.c_ins_pi_limit
    fill_in "C ins pol number", with: @general.c_ins_pol_number
    fill_in "C insurer", with: @general.c_insurer
    fill_in "C name", with: @general.c_name
    fill_in "C postcode", with: @general.c_postcode
    fill_in "C qualifications", with: @general.c_qualifications
    fill_in "C reg number", with: @general.c_reg_number
    fill_in "C reg number ir", with: @general.c_reg_number_ir
    fill_in "C reg number s", with: @general.c_reg_number_s
    fill_in "C rel part disc", with: @general.c_rel_part_disc
    fill_in "C telephone", with: @general.c_telephone
    fill_in "Dh co2f", with: @general.dh_co2f
    fill_in "Dh primf", with: @general.dh_primf
    fill_in "Elec power factor", with: @general.elec_power_factor
    fill_in "Html dr reports", with: @general.html_dr_reports
    fill_in "Interface", with: @general.interface
    fill_in "Interface val", with: @general.interface_val
    fill_in "Interface version", with: @general.interface_version
    fill_in "Landmark environment", with: @general.landmark_environment
    fill_in "Light metering", with: @general.light_metering
    fill_in "Max storey", with: @general.max_storey
    fill_in "Nos level", with: @general.nos_level
    fill_in "O address", with: @general.o_address
    fill_in "O city", with: @general.o_city
    fill_in "O name", with: @general.o_name
    fill_in "O postcode", with: @general.o_postcode
    fill_in "O telephone", with: @general.o_telephone
    fill_in "Object name", with: @general.object_name
    fill_in "P name", with: @general.p_name
    fill_in "Path file interface", with: @general.path_file_interface
    fill_in "Soft comp name", with: @general.soft_comp_name
    fill_in "Transaction type", with: @general.transaction_type
    fill_in "Uprn", with: @general.uprn
    fill_in "Weather", with: @general.weather
    click_on "Update General"

    assert_text "General was successfully updated"
    click_on "Back"
  end

  test "destroying a General" do
    visit generals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "General was successfully destroyed"
  end
end
