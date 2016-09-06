class AddReferencesToLores < ActiveRecord::Migration[5.0]
  def change
    add_reference :lores, :encounter, foreign_key: true
  end
end
