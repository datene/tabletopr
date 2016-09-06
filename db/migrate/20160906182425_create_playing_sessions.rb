class CreatePlayingSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :playing_sessions do |t|

      t.timestamps
    end
  end
end
