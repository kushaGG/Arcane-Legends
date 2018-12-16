class AddBossToEnemies < ActiveRecord::Migration[5.1]
  def change
    add_column :enemies, :boss, :boolean
  end
end
