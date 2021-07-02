class Player < ApplicationRecord
  belongs_to :battle
  validates :name, presence: true
  validates :name, length: { minimum: 2 }
end
