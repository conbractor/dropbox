class CreateZones < ActiveRecord::Migration[6.0]
  def change
    create_table :zones do |t|
      t.string :object_name
      t.string :isbem_id
      t.string :activity
      t.string :activity_name
      t.string :multiplier
      t.string :area
      t.string :height
      t.string :vent_zone_hvac
      t.string :q_v_type
      t.string :f_ctrl_vent_dem
      t.string :heat_rec_system
      t.string :heat_rec_seff
      t.string :heat_rec_var_eff
      t.string :hepa_filter
      t.string :vent_mech_exh
      t.string :destrat_fan
      t.string :vent_sfp
      t.string :sfp_tu
      t.string :q50_inf
      t.string :dhw_generator
      t.string :dhw_pipe_len
      t.string :light_case
      t.string :light_type
      t.string :light_display_eff
      t.string :light_control
      t.string :light_dl_aut_zone
      t.string :light_occ_sens_t
      t.string :light_time_switch
      t.string :jnct_roof_wall_mc
      t.string :jnct_wall_grnd_mc
      t.string :jnct_wall_wall_mc
      t.string :jnct_wall_flr_mc
      t.string :jnct_lintel_mc
      t.string :jnct_sill_mc
      t.string :jnct_jamb_mc
      t.string :jnct_roof_wall
      t.string :jnct_wall_grnd
      t.string :jnct_wall_wall
      t.string :jnct_wall_flr
      t.string :jnct_lintel
      t.string :jnct_sill
      t.string :jnct_jamb
      t.string :jnct_accr_detail
      t.string :jnct_accr_detail_mc
      t.string :night_cooling
      t.string :q_v_m_exh
      t.string :vent_sfp_exh
      t.string :vent_mech_exh_ncm
      t.string :lamp_ballast_eff_dl
      t.string :constant_illum
      t.string :light_dl_area_perc
      t.string :light_paras_pw_occ
      t.string :shell_assumed
      t.string :light_act_watt
      t.string :light_lux_design
      t.string :light_photo_type
      t.string :light_paras_pw
      t.string :light_ph_back

      t.timestamps
    end
  end
end
