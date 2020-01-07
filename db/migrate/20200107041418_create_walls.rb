class CreateWalls < ActiveRecord::Migration[6.0]
  def change
    create_table :walls do |t|
      t.string :object_name
      t.string :multiplier
      t.string :type_0
      t.string :type_env
      t.string :length
      t.string :pitch
      t.string :area
      t.string :orientation
      t.string :construction

      t.timestamps
    end
  end
end
