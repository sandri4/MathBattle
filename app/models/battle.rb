class Battle < ApplicationRecord
  has_many :players
  accepts_nested_attributes_for :players
  validates :first_player_name, :second_player_name, presence: true, length: { minimum: 2 }
end
