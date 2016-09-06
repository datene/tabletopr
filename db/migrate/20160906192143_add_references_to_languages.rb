class AddReferencesToLanguages < ActiveRecord::Migration[5.0]
  def change
    add_reference :languages, :rpg_character, foreign_key: true
  end
end
