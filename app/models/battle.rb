class Battle < ApplicationRecord
  validates :first_player_name, :second_player_name, presence: true
  validates :first_player_name, length: { minimum: 2 }
  validates :second_player_name, length: { minimum: 2 }

  def math_task
    task = rand(1..96).to_s + ['+', '-'].sample + rand(1..96).to_s + ['+', '-'].sample + rand(1..96).to_s
    [p(task), eval(task)]
  end
end
