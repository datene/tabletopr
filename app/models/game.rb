class Game < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  
  has_many :chapters
  has_many :messages
  has_many :playing_sessions
  has_many :rpg_characters
  has_many :users, through: :playing_sessions
  belongs_to :gm, class_name: "User" #, foreign_key: "gm_id"
  belongs_to :creator, class_name: "User"
end
