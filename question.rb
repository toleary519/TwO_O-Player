
class Question 
  attr_reader :prompt, :answer, :num1, :num2

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @prompt = "What is the sum of #{@num1} and #{@num2}"
    @answer = num1 + num2
  end
end

