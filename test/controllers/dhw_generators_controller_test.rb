require 'test_helper'

class DhwGeneratorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dhw_generator = dhw_generators(:one)
  end

  test "should get index" do
    get dhw_generators_url
    assert_response :success
  end

  test "should get new" do
    get new_dhw_generator_url
    assert_response :success
  end

  test "should create dhw_generator" do
    assert_difference('DhwGenerator.count') do
      post dhw_generators_url, params: { dhw_generator: { chp: @dhw_generator.chp, dhw_gen_seff: @dhw_generator.dhw_gen_seff, fuel_type: @dhw_generator.fuel_type, heat_gen_post98: @dhw_generator.heat_gen_post98, heat_gen_type: @dhw_generator.heat_gen_type, heat_source: @dhw_generator.heat_source, hvac_system_eff: @dhw_generator.hvac_system_eff, isbem_id: @dhw_generator.isbem_id, object_name: @dhw_generator.object_name, sec_circulation: @dhw_generator.sec_circulation, store_insulat_thick: @dhw_generator.store_insulat_thick, store_insulat_type: @dhw_generator.store_insulat_type, store_system: @dhw_generator.store_system, store_vol: @dhw_generator.store_vol } }
    end

    assert_redirected_to dhw_generator_url(DhwGenerator.last)
  end

  test "should show dhw_generator" do
    get dhw_generator_url(@dhw_generator)
    assert_response :success
  end

  test "should get edit" do
    get edit_dhw_generator_url(@dhw_generator)
    assert_response :success
  end

  test "should update dhw_generator" do
    patch dhw_generator_url(@dhw_generator), params: { dhw_generator: { chp: @dhw_generator.chp, dhw_gen_seff: @dhw_generator.dhw_gen_seff, fuel_type: @dhw_generator.fuel_type, heat_gen_post98: @dhw_generator.heat_gen_post98, heat_gen_type: @dhw_generator.heat_gen_type, heat_source: @dhw_generator.heat_source, hvac_system_eff: @dhw_generator.hvac_system_eff, isbem_id: @dhw_generator.isbem_id, object_name: @dhw_generator.object_name, sec_circulation: @dhw_generator.sec_circulation, store_insulat_thick: @dhw_generator.store_insulat_thick, store_insulat_type: @dhw_generator.store_insulat_type, store_system: @dhw_generator.store_system, store_vol: @dhw_generator.store_vol } }
    assert_redirected_to dhw_generator_url(@dhw_generator)
  end

  test "should destroy dhw_generator" do
    assert_difference('DhwGenerator.count', -1) do
      delete dhw_generator_url(@dhw_generator)
    end

    assert_redirected_to dhw_generators_url
  end
end
