class CreateActions < ActiveRecord::Migration[5.0]
  def change
    create_table :actions do |t|
      t.text :description
      t.string :status, default: "pending"
      t.string :permission, default: "pending"
      t.timestamps
    end
  end
end
