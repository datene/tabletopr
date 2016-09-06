class AddReferencesToMonsters < ActiveRecord::Migration[5.0]
  def change
    add_reference :monsters, :action_event, foreign_key: true
  end
end
