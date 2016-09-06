class AddGmToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :gm, :boolean, default: false
  end
end
