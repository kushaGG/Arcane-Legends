class AddExpToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :exp, :integer, default: 0
  end
end
