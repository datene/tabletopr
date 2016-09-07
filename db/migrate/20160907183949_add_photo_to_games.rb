class AddPhotoToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :photo, :string
  end
end
