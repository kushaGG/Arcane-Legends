class CreateGameSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :game_sessions do |t|
      t.integer :character_id
      t.integer :location_id

      t.timestamps
    end
  end
end
