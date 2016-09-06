class AddReferencesToRpgCharacter < ActiveRecord::Migration[5.0]
  def change
    add_reference :rpg_characters, :user, foreign_key: true
    add_reference :rpg_characters, :game, foreign_key: true
  end
end
