class ActionEvent < ApplicationRecord
  has_many :actions
  has_many :initiatives
  has_many :monsters
  belongs_to :encounter
end
