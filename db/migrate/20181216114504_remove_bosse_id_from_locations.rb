class RemoveBosseIdFromLocations < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :bosse_id, :integer
  end
end
