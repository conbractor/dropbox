require "application_system_test_case"

class CompliancesTest < ApplicationSystemTestCase
  setup do
    @compliance = compliances(:one)
  end

  test "visiting the index" do
    visit compliances_url
    assert_selector "h1", text: "Compliances"
  end

  test "creating a Compliance" do
    visit compliances_url
    click_on "New Compliance"

    fill_in "Air con inspection", with: @compliance.air_con_inspection
    fill_in "Air con installed", with: @compliance.air_con_installed
    fill_in "Air con kw", with: @compliance.air_con_kw
    fill_in "Air con kw exact", with: @compliance.air_con_kw_exact
    fill_in "Alt sys consider", with: @compliance.alt_sys_consider
    fill_in "Br stage", with: @compliance.br_stage
    fill_in "Distress purchase", with: @compliance.distress_purchase
    fill_in "Eng heritage", with: @compliance.eng_heritage
    fill_in "Epc language", with: @compliance.epc_language
    fill_in "Epc type", with: @compliance.epc_type
    fill_in "Modular portable", with: @compliance.modular_portable
    fill_in "Object name", with: @compliance.object_name
    fill_in "Shell and core", with: @compliance.shell_and_core
    click_on "Create Compliance"

    assert_text "Compliance was successfully created"
    click_on "Back"
  end

  test "updating a Compliance" do
    visit compliances_url
    click_on "Edit", match: :first

    fill_in "Air con inspection", with: @compliance.air_con_inspection
    fill_in "Air con installed", with: @compliance.air_con_installed
    fill_in "Air con kw", with: @compliance.air_con_kw
    fill_in "Air con kw exact", with: @compliance.air_con_kw_exact
    fill_in "Alt sys consider", with: @compliance.alt_sys_consider
    fill_in "Br stage", with: @compliance.br_stage
    fill_in "Distress purchase", with: @compliance.distress_purchase
    fill_in "Eng heritage", with: @compliance.eng_heritage
    fill_in "Epc language", with: @compliance.epc_language
    fill_in "Epc type", with: @compliance.epc_type
    fill_in "Modular portable", with: @compliance.modular_portable
    fill_in "Object name", with: @compliance.object_name
    fill_in "Shell and core", with: @compliance.shell_and_core
    click_on "Update Compliance"

    assert_text "Compliance was successfully updated"
    click_on "Back"
  end

  test "destroying a Compliance" do
    visit compliances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Compliance was successfully destroyed"
  end
end
