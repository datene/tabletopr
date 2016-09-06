class CreateActionEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :action_events do |t|
      t.text :description
      t.timestamps
    end
  end
end
