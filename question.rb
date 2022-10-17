class Question
  attr_accessor :questionObj
  def initialize
    @questionObj = {}
  end
  def question
    num1 = rand(21)
    num2 = rand(21)
    @questionObj["question"] = "What is #{num1} + #{num2}?"
    @questionObj["answer"] = num1 + num2
    @questionObj
  end
end