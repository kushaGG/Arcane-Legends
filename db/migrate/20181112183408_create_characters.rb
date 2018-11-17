class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.integer :user_id
      t.string :nickname
      t.string :character_class
      t.integer :lvl
      t.integer :STR
      t.integer :DEX
      t.integer :INT

      t.timestamps
    end
  end
end
