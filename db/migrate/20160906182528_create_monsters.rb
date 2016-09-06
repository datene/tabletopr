class CreateMonsters < ActiveRecord::Migration[5.0]
  def change
    create_table :monsters do |t|
      t.string :race
      t.text :background
      t.string :moral_alignment
      t.string :name
      t.integer :armor_class
      t.integer :hitpoints
      t.integer :initiative_modifier
      t.integer :speed
      t.string :class_style
      t.string :picture
      t.timestamps
    end
  end
end
