class CreateFeatureTraits < ActiveRecord::Migration[5.0]
  def change
    create_table :feature_traits do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
