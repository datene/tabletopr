class AddReferencesToActionEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :action_events, :encounter, foreign_key: true
  end
end
