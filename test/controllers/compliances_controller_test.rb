require 'test_helper'

class CompliancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compliance = compliances(:one)
  end

  test "should get index" do
    get compliances_url
    assert_response :success
  end

  test "should get new" do
    get new_compliance_url
    assert_response :success
  end

  test "should create compliance" do
    assert_difference('Compliance.count') do
      post compliances_url, params: { compliance: { air_con_inspection: @compliance.air_con_inspection, air_con_installed: @compliance.air_con_installed, air_con_kw: @compliance.air_con_kw, air_con_kw_exact: @compliance.air_con_kw_exact, alt_sys_consider: @compliance.alt_sys_consider, br_stage: @compliance.br_stage, distress_purchase: @compliance.distress_purchase, eng_heritage: @compliance.eng_heritage, epc_language: @compliance.epc_language, epc_type: @compliance.epc_type, modular_portable: @compliance.modular_portable, object_name: @compliance.object_name, shell_and_core: @compliance.shell_and_core } }
    end

    assert_redirected_to compliance_url(Compliance.last)
  end

  test "should show compliance" do
    get compliance_url(@compliance)
    assert_response :success
  end

  test "should get edit" do
    get edit_compliance_url(@compliance)
    assert_response :success
  end

  test "should update compliance" do
    patch compliance_url(@compliance), params: { compliance: { air_con_inspection: @compliance.air_con_inspection, air_con_installed: @compliance.air_con_installed, air_con_kw: @compliance.air_con_kw, air_con_kw_exact: @compliance.air_con_kw_exact, alt_sys_consider: @compliance.alt_sys_consider, br_stage: @compliance.br_stage, distress_purchase: @compliance.distress_purchase, eng_heritage: @compliance.eng_heritage, epc_language: @compliance.epc_language, epc_type: @compliance.epc_type, modular_portable: @compliance.modular_portable, object_name: @compliance.object_name, shell_and_core: @compliance.shell_and_core } }
    assert_redirected_to compliance_url(@compliance)
  end

  test "should destroy compliance" do
    assert_difference('Compliance.count', -1) do
      delete compliance_url(@compliance)
    end

    assert_redirected_to compliances_url
  end
end
