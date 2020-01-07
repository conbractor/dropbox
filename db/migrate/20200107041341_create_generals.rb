class CreateGenerals < ActiveRecord::Migration[6.0]
  def change
    create_table :generals do |t|
      t.string :object_name
      t.string :b_type
      t.string :weather
      t.string :p_name
      t.string :b_address_0
      t.string :b_address_1
      t.string :b_city
      t.string :b_postcode
      t.string :c_name
      t.string :c_telephone
      t.string :c_address
      t.string :c_email
      t.string :c_accred_scheme_web
      t.string :c_city
      t.string :c_postcode
      t.string :c_reg_number
      t.string :c_reg_number_s
      t.string :c_reg_number_ir
      t.string :c_accred_scheme
      t.string :c_emp_trad_name
      t.string :c_emp_trad_address
      t.string :c_emp_trad_number
      t.string :c_rel_part_disc
      t.string :transaction_type
      t.string :c_qualifications
      t.string :soft_comp_name
      t.string :interface_val
      t.string :interface
      t.string :interface_version
      t.string :path_file_interface
      t.string :act_not
      t.string :building_area
      t.string :elec_power_factor
      t.string :nos_level
      t.string :c_insurer
      t.string :c_ins_pol_number
      t.string :c_ins_eff_date
      t.string :c_ins_exp_date
      t.string :c_ins_pi_limit
      t.string :b_insp_date
      t.string :uprn
      t.string :landmark_environment
      t.string :light_metering
      t.string :build_orientation
      t.string :html_dr_reports
      t.string :max_storey
      t.string :b_address_2
      t.string :b_address_3
      t.string :o_name
      t.string :o_telephone
      t.string :o_address
      t.string :o_city
      t.string :o_postcode
      t.string :b_loc_description
      t.string :dh_co2f
      t.string :dh_primf

      t.timestamps
    end
  end
end
