class AddCreatorToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :creator_id, :integer
    add_foreign_key :games, :users, column: "creator_id"
    add_index :games, :creator_id
  end
end
