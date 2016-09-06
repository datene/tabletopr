class Encounter < ApplicationRecord
  has_many :action_events
  has_many :lores
  belongs_to :chapter
end
