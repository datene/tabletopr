class AddReferencesToSpellAttacks < ActiveRecord::Migration[5.0]
  def change
    add_reference :spell_attacks, :rpg_character, foreign_key: true
    add_reference :spell_attacks, :dice, foreign_key: true
  end
end
