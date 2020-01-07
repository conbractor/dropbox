class CreateDoors < ActiveRecord::Migration[6.0]
  def change
    create_table :doors do |t|
      t.string :object_name
      t.string :area
      t.string :construction
      t.string :type_0

      t.timestamps
    end
  end
end
