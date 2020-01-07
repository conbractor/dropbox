class CreateCompliances < ActiveRecord::Migration[6.0]
  def change
    create_table :compliances do |t|
      t.string :object_name
      t.string :epc_type
      t.string :eng_heritage
      t.string :br_stage
      t.string :air_con_installed
      t.string :air_con_kw
      t.string :air_con_inspection
      t.string :alt_sys_consider
      t.string :epc_language
      t.string :shell_and_core
      t.string :modular_portable
      t.string :distress_purchase
      t.string :air_con_kw_exact

      t.timestamps
    end
  end
end
