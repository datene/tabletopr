class CreateProficiencies < ActiveRecord::Migration[5.0]
  def change
    create_table :proficiencies do |t|
      t.string :name
      t.timestamps
    end
  end
end
