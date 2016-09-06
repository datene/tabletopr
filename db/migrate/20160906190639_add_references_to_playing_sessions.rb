class AddReferencesToPlayingSessions < ActiveRecord::Migration[5.0]
  def change
    add_reference :playing_sessions, :game, foreign_key: true
    add_reference :playing_sessions, :user, foreign_key: true
  end
end
