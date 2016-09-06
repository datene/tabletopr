class RpgCharacter < ApplicationRecord
  has_many :abilities
  has_many :actions
  has_many :equipments
  has_many :feature_traits
  has_many :languages
  has_many :proficiencies
  belongs_to :user
  belongs_to :game
end
