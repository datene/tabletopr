class Action < ApplicationRecord
  belongs_to :action_event
  belongs_to :rpg_character
  belongs_to :dice_roll
end
