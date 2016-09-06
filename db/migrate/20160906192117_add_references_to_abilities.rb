class AddReferencesToAbilities < ActiveRecord::Migration[5.0]
  def change
    add_reference :abilities, :rpg_character, foreign_key: true
  end
end
