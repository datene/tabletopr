class AddReferencesToChapters < ActiveRecord::Migration[5.0]
  def change
    add_reference :chapters, :game, foreign_key: true
  end
end
