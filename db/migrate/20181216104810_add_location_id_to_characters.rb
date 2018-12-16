class AddLocationIdToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :location_id, :integer
  end
end
