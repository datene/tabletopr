class AddReferencesToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :gm_id, :integer
    add_foreign_key :games, :users, column: "gm_id"
    add_index :games, :gm_id
  end
end
