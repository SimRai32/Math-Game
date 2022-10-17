require "./question"
require "./player"
require "./game"
questions = Question.new()
player1 = Player.new("player1")
player2 = Player.new("player2")
game = Game.new(player1, player2)
while player1.lives > 0 && player2.lives > 0
  question = questions.question
  game.play(question)
end