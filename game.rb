class Game
  @@current_player = 0
  attr_accessor :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
  puts @player1
  def play(question)
    if @@current_player > 0
      puts "----- NEW TURN -----"
    end
    # decides which player's turn it is 
    player = @@current_player % 2 == 0 ? "Player 1" : "Player 2"
    playerLives = @@current_player % 2 == 0 ? @player1 : @player2
    # asks question
    puts"#{player}: #{question["question"]}"
    answer = gets.chomp.to_i
    #checks if player got the correct answer
    if answer == question["answer"]
      puts "#{player}: YES! You are correct."
    else
      puts "Seriously? No!"
      playerLives.lives = playerLives.lives-1
    end
    @@current_player = @@current_player + 1
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    # checks if the current players still has lives
    if playerLives.lives == 0
      player = @@current_player % 2 == 0 ? "Player 1" : "Player 2"
      playerLives = @@current_player % 2 == 0 ? @player1 : @player2
      puts "#{player} wins with a score of #{playerLives.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
    
  end

end