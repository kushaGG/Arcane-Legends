class CreateEnemies < ActiveRecord::Migration[5.1]
  def change
    create_table :enemies do |t|
      t.string :name
      t.integer :lvl
      t.integer :location_id
      t.integer :hp
      t.integer :damage

      t.timestamps
    end
  end
end
