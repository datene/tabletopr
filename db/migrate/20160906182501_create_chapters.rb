class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.text :description
      t.timestamps
    end
  end
end
