class CreateRpgCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :rpg_characters do |t|
        t.string :class_style
        t.integer :level
        t.string :race
        t.text :background
        t.string :moral_alignment
        t.string :name
        t.integer :experience_points
        t.integer :armor_class
        t.integer :initiative_modifier
        t.integer :speed
        t.string :gender
        t.integer :hitpoints
        t.string :picture
      t.timestamps
    end
  end
end
