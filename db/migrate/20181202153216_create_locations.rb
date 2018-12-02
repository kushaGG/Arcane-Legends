class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.integer :character_id
      t.integer :enemy_id
      t.integer :boss_id
      t.string :name

      t.timestamps
    end
  end
end
