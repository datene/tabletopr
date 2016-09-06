class AddReferencesToEncounters < ActiveRecord::Migration[5.0]
  def change
    add_reference :encounters, :chapter, foreign_key: true
  end
end
