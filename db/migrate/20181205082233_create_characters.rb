class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.integer :user_id
      t.string :nickname
      t.string :character_class
      t.integer :lvl ,default: 1
      t.integer :damage
      t.integer :hp

      t.timestamps
    end
  end
end
