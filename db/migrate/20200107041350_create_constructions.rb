class CreateConstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :constructions do |t|
      t.string :object_name
      t.string :type_0
      t.string :u_value
      t.string :u_value_corr
      t.string :cm
      t.string :metal_cladding

      t.timestamps
    end
  end
end
