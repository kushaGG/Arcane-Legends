class RemoveCharacterIdFromLocation < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :character_id, :integer
  end
end
