class AddReferencesToFeatureTraits < ActiveRecord::Migration[5.0]
  def change
    add_reference :feature_traits, :rpg_character, foreign_key: true
  end
end
