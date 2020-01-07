require "application_system_test_case"

class DhwGeneratorsTest < ApplicationSystemTestCase
  setup do
    @dhw_generator = dhw_generators(:one)
  end

  test "visiting the index" do
    visit dhw_generators_url
    assert_selector "h1", text: "Dhw Generators"
  end

  test "creating a Dhw generator" do
    visit dhw_generators_url
    click_on "New Dhw Generator"

    fill_in "Chp", with: @dhw_generator.chp
    fill_in "Dhw gen seff", with: @dhw_generator.dhw_gen_seff
    fill_in "Fuel type", with: @dhw_generator.fuel_type
    fill_in "Heat gen post98", with: @dhw_generator.heat_gen_post98
    fill_in "Heat gen type", with: @dhw_generator.heat_gen_type
    fill_in "Heat source", with: @dhw_generator.heat_source
    fill_in "Hvac system eff", with: @dhw_generator.hvac_system_eff
    fill_in "Isbem", with: @dhw_generator.isbem_id
    fill_in "Object name", with: @dhw_generator.object_name
    fill_in "Sec circulation", with: @dhw_generator.sec_circulation
    fill_in "Store insulat thick", with: @dhw_generator.store_insulat_thick
    fill_in "Store insulat type", with: @dhw_generator.store_insulat_type
    fill_in "Store system", with: @dhw_generator.store_system
    fill_in "Store vol", with: @dhw_generator.store_vol
    click_on "Create Dhw generator"

    assert_text "Dhw generator was successfully created"
    click_on "Back"
  end

  test "updating a Dhw generator" do
    visit dhw_generators_url
    click_on "Edit", match: :first

    fill_in "Chp", with: @dhw_generator.chp
    fill_in "Dhw gen seff", with: @dhw_generator.dhw_gen_seff
    fill_in "Fuel type", with: @dhw_generator.fuel_type
    fill_in "Heat gen post98", with: @dhw_generator.heat_gen_post98
    fill_in "Heat gen type", with: @dhw_generator.heat_gen_type
    fill_in "Heat source", with: @dhw_generator.heat_source
    fill_in "Hvac system eff", with: @dhw_generator.hvac_system_eff
    fill_in "Isbem", with: @dhw_generator.isbem_id
    fill_in "Object name", with: @dhw_generator.object_name
    fill_in "Sec circulation", with: @dhw_generator.sec_circulation
    fill_in "Store insulat thick", with: @dhw_generator.store_insulat_thick
    fill_in "Store insulat type", with: @dhw_generator.store_insulat_type
    fill_in "Store system", with: @dhw_generator.store_system
    fill_in "Store vol", with: @dhw_generator.store_vol
    click_on "Update Dhw generator"

    assert_text "Dhw generator was successfully updated"
    click_on "Back"
  end

  test "destroying a Dhw generator" do
    visit dhw_generators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dhw generator was successfully destroyed"
  end
end
