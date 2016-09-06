class AddReferencesToSkills < ActiveRecord::Migration[5.0]
  def change
    add_reference :skills, :rpg_character, foreign_key: true
  end
end
