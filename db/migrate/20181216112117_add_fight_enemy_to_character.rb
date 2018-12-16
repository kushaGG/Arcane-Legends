class AddFightEnemyToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :fight_enemy_id, :integer
  end
end
