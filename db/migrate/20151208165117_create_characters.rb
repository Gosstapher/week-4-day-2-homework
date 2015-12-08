class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :game
      t.text :image
      t.integer :age
      t.integer :height
      t.text :misc_info

      t.timestamps null: false
    end
  end
end
