class AddReferencesToEquipment < ActiveRecord::Migration[5.0]
  def change
    add_reference :equipment, :rpg_character, foreign_key: true
  end
end
