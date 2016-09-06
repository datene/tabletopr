class CreateSpellAttacks < ActiveRecord::Migration[5.0]
  def change
    create_table :spell_attacks do |t|
      t.string :name
      t.integer :atk_bonus
      t.integer :damage_modifier
      t.timestamps
    end
  end
end
