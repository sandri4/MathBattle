class Player < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { minimum: 5 }
  validates :name, length: { maximum: 60 }
end
