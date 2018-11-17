class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.string :character_class
      t.string :rarity
      t.integer :lvl
      t.integer :STR
      t.integer :DEX
      t.integer :INT

      t.timestamps
    end
  end
end
