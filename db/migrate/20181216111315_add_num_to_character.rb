class AddNumToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :num, :integer
  end
end
