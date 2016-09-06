class Game < ApplicationRecord
  has_many :chapters
  has_many :messages
  has_many :playing_sessions
  has_many :rpg_characters
  has_many :users, through: :playing_sessions
  belongs_to :gm, class_name: "User" #, foreign_key: "gm_id"
end
