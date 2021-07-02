class BattleState
  MIN_NUMBER = 1
  MAX_NUMBER = 96
  OPERATORS = %i[+ -]

  class << self
    def generate_number
      rand(MIN_NUMBER..MAX_NUMBER)
    end

    def math_task
      first_number = generate_number
      second_number = generate_number
      third_number  = generate_number
      first_operator = OPERATORS.sample
      second_operator = OPERATORS.sample
      example = first_number.to_s + first_operator.to_s + second_number.to_s + second_operator.to_s + third_number.to_s
      result = first_number.send(first_operator, second_number).send(second_operator, third_number)
      [example, result]
    end
  end
end
