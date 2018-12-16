class CreateFightEnemies < ActiveRecord::Migration[5.1]
  def change
    create_table :fight_enemies do |t|
      t.integer :enemy_id
      t.integer :character_id
      t.integer :hp

      t.timestamps
    end
  end
end
