class AddReferencesToProficiencies < ActiveRecord::Migration[5.0]
  def change
    add_reference :proficiencies, :rpg_character, foreign_key: true
  end
end
