class CreateDices < ActiveRecord::Migration[5.0]
  def change
    create_table :dices do |t|
      t.integer :eyes
      t.timestamps
    end
  end
end
