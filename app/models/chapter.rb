class Chapter < ApplicationRecord
  belongs_to :game
  has_many :encounters
end
