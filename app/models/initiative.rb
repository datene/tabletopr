class Initiative < ApplicationRecord
  belongs_to :dice_roll
  belongs_to :action_event
  belongs_to :rpg_character
  belongs_to :monster
end
