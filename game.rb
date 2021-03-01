class Game
  def initialize
    @player1 = Players.new('Player 1')
    @player2 = Players.new('Player 2')
    @current_player = @player1
  end

  def play
    while @player1.still_playing? && @player1.still_playing? do
      new_question = Questions.new
      new_question.question(@current_player.name)
      print "> "
      answer = gets.chomp
      
      # verify answer is correct or not
      if new_question.correct_answer?(answer.to_i)
        puts "#{@current_player.name}: YES! You are correct."
      else
        puts "#{@current_player.name}: Seriously? No!"
        @current_player.wrong_answer
      end
      
      # Score results
      puts "Score: P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    
      # Change players turn
      if @current_player == @player1
        @current_player = @player2
      else 
        @current_player = @player1
      end

      # Keep creating new questions until one player runs out of lives
      puts "----- NEW TURN -----"
    end

    # Winner player prints with total score
    if @player1.no_lives?
      puts "Player 2 wins with a score of #{@player2.lives}/3"
    else
      puts "Player 1 wins with a score of #{@player1.lives}/3"
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end