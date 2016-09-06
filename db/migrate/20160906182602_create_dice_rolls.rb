class CreateDiceRolls < ActiveRecord::Migration[5.0]
  def change
    create_table :dice_rolls do |t|
      t.integer :value
      t.timestamps
    end
  end
end
