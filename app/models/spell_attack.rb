class SpellAttack < ApplicationRecord
  belongs_to :rpg_character
  belongs_to :dice
end
