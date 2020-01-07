class CreateDhwGenerators < ActiveRecord::Migration[6.0]
  def change
    create_table :dhw_generators do |t|
      t.string :object_name
      t.string :isbem_id
      t.string :heat_gen_type
      t.string :dhw_gen_seff
      t.string :fuel_type
      t.string :store_system
      t.string :store_vol
      t.string :store_insulat_type
      t.string :store_insulat_thick
      t.string :sec_circulation
      t.string :heat_gen_post98
      t.string :heat_source
      t.string :hvac_system_eff
      t.string :chp

      t.timestamps
    end
  end
end
