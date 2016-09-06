class AddReferencesToInitiatives < ActiveRecord::Migration[5.0]
  def change
    add_reference :initiatives, :dice_roll, foreign_key: true
    add_reference :initiatives, :action_event, foreign_key: true
    add_reference :initiatives, :rpg_character, foreign_key: true
    add_reference :initiatives, :monster, foreign_key: true
  end
end
