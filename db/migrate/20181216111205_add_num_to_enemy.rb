class AddNumToEnemy < ActiveRecord::Migration[5.1]
  def change
    add_column :enemies, :num, :integer
  end
end
