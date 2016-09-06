class AddReferencesToActions < ActiveRecord::Migration[5.0]
  def change
    add_reference :actions, :action_event, foreign_key: true
    add_reference :actions, :rpg_character, foreign_key: true
    add_reference :actions, :dice_roll, foreign_key: true
  end
end
