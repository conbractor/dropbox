# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_07_042418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "compliances", force: :cascade do |t|
    t.string "object_name"
    t.string "epc_type"
    t.string "eng_heritage"
    t.string "br_stage"
    t.string "air_con_installed"
    t.string "air_con_kw"
    t.string "air_con_inspection"
    t.string "alt_sys_consider"
    t.string "epc_language"
    t.string "shell_and_core"
    t.string "modular_portable"
    t.string "distress_purchase"
    t.string "air_con_kw_exact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "constructions", force: :cascade do |t|
    t.string "object_name"
    t.string "type_0"
    t.string "u_value"
    t.string "u_value_corr"
    t.string "cm"
    t.string "metal_cladding"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dhw_generators", force: :cascade do |t|
    t.string "object_name"
    t.string "isbem_id"
    t.string "heat_gen_type"
    t.string "dhw_gen_seff"
    t.string "fuel_type"
    t.string "store_system"
    t.string "store_vol"
    t.string "store_insulat_type"
    t.string "store_insulat_thick"
    t.string "sec_circulation"
    t.string "heat_gen_post98"
    t.string "heat_source"
    t.string "hvac_system_eff"
    t.string "chp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doors", force: :cascade do |t|
    t.string "object_name"
    t.string "area"
    t.string "construction"
    t.string "type_0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drops", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "generals", force: :cascade do |t|
    t.string "object_name"
    t.string "b_type"
    t.string "weather"
    t.string "p_name"
    t.string "b_address_0"
    t.string "b_address_1"
    t.string "b_city"
    t.string "b_postcode"
    t.string "c_name"
    t.string "c_telephone"
    t.string "c_address"
    t.string "c_email"
    t.string "c_accred_scheme_web"
    t.string "c_city"
    t.string "c_postcode"
    t.string "c_reg_number"
    t.string "c_reg_number_s"
    t.string "c_reg_number_ir"
    t.string "c_accred_scheme"
    t.string "c_emp_trad_name"
    t.string "c_emp_trad_address"
    t.string "c_emp_trad_number"
    t.string "c_rel_part_disc"
    t.string "transaction_type"
    t.string "c_qualifications"
    t.string "soft_comp_name"
    t.string "interface_val"
    t.string "interface"
    t.string "interface_version"
    t.string "path_file_interface"
    t.string "act_not"
    t.string "building_area"
    t.string "elec_power_factor"
    t.string "nos_level"
    t.string "c_insurer"
    t.string "c_ins_pol_number"
    t.string "c_ins_eff_date"
    t.string "c_ins_exp_date"
    t.string "c_ins_pi_limit"
    t.string "b_insp_date"
    t.string "uprn"
    t.string "landmark_environment"
    t.string "light_metering"
    t.string "build_orientation"
    t.string "html_dr_reports"
    t.string "max_storey"
    t.string "b_address_2"
    t.string "b_address_3"
    t.string "o_name"
    t.string "o_telephone"
    t.string "o_address"
    t.string "o_city"
    t.string "o_postcode"
    t.string "b_loc_description"
    t.string "dh_co2f"
    t.string "dh_primf"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "glasses", force: :cascade do |t|
    t.string "object_name"
    t.string "u_value"
    t.string "tot_sol_trans"
    t.string "lig_sol_trans"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hvac_systems", force: :cascade do |t|
    t.string "object_name"
    t.string "isbem_id"
    t.string "type_0"
    t.string "heat_source"
    t.string "chp"
    t.string "fuel_type"
    t.string "fuel_type_cool"
    t.string "heat_rec_system"
    t.string "heat_rec_seff"
    t.string "heat_rec_var_eff"
    t.string "cool_sseer"
    t.string "heat_sseff"
    t.string "aux_energy_corr"
    t.string "variable_speed_pump"
    t.string "heat_gen_seff"
    t.string "eff_default_heat"
    t.string "metering"
    t.string "sfp_check"
    t.string "room_time_ctrl"
    t.string "room_temp_ctrl"
    t.string "cen_time_ctrl"
    t.string "cool_gen_seer"
    t.string "eff_default_cool"
    t.string "cool_gen_eer"
    t.string "weather_comp"
    t.string "duct_leakage_pc"
    t.string "optimum_start"
    t.string "mixed_mode"
    t.string "chiller_type"
    t.string "sfp"
    t.string "dhw_served_ref"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rec_users", force: :cascade do |t|
    t.string "object_name"
    t.string "code"
    t.string "user_in_out"
    t.string "rec_comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "walls", force: :cascade do |t|
    t.string "object_name"
    t.string "multiplier"
    t.string "type_0"
    t.string "type_env"
    t.string "length"
    t.string "pitch"
    t.string "area"
    t.string "orientation"
    t.string "construction"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "windows", force: :cascade do |t|
    t.string "object_name"
    t.string "area"
    t.string "glass"
    t.string "dev_proj_ratio"
    t.string "aspect_ratio"
    t.string "frame_factor"
    t.string "shading_position"
    t.string "shading_colour"
    t.string "shading_translucency"
    t.string "shading_factor"
    t.string "brise_soleil"
    t.string "disp_wind"
    t.string "multiplier"
    t.string "roof_light_cover"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "zones", force: :cascade do |t|
    t.string "object_name"
    t.string "isbem_id"
    t.string "activity"
    t.string "activity_name"
    t.string "multiplier"
    t.string "area"
    t.string "height"
    t.string "vent_zone_hvac"
    t.string "q_v_type"
    t.string "f_ctrl_vent_dem"
    t.string "heat_rec_system"
    t.string "heat_rec_seff"
    t.string "heat_rec_var_eff"
    t.string "hepa_filter"
    t.string "vent_mech_exh"
    t.string "destrat_fan"
    t.string "vent_sfp"
    t.string "sfp_tu"
    t.string "q50_inf"
    t.string "dhw_generator"
    t.string "dhw_pipe_len"
    t.string "light_case"
    t.string "light_type"
    t.string "light_display_eff"
    t.string "light_control"
    t.string "light_dl_aut_zone"
    t.string "light_occ_sens_t"
    t.string "light_time_switch"
    t.string "jnct_roof_wall_mc"
    t.string "jnct_wall_grnd_mc"
    t.string "jnct_wall_wall_mc"
    t.string "jnct_wall_flr_mc"
    t.string "jnct_lintel_mc"
    t.string "jnct_sill_mc"
    t.string "jnct_jamb_mc"
    t.string "jnct_roof_wall"
    t.string "jnct_wall_grnd"
    t.string "jnct_wall_wall"
    t.string "jnct_wall_flr"
    t.string "jnct_lintel"
    t.string "jnct_sill"
    t.string "jnct_jamb"
    t.string "jnct_accr_detail"
    t.string "jnct_accr_detail_mc"
    t.string "night_cooling"
    t.string "q_v_m_exh"
    t.string "vent_sfp_exh"
    t.string "vent_mech_exh_ncm"
    t.string "lamp_ballast_eff_dl"
    t.string "constant_illum"
    t.string "light_dl_area_perc"
    t.string "light_paras_pw_occ"
    t.string "shell_assumed"
    t.string "light_act_watt"
    t.string "light_lux_design"
    t.string "light_photo_type"
    t.string "light_paras_pw"
    t.string "light_ph_back"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
