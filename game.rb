class Game
  def initialize
    @player1 = Player1
    @player2 = Player2
    @is_player1 = true
    @game_over = false
  end

  # Ask a question and check the answer
  def generate_question(player) 
    num1 = rand(20)
    num2 = rand(20)
    puts "#{player.name}: what is #{num1} + #{num2}"
    answer = get.chomp.to_i

    if (num1 + num2 == @answer)
      puts "YES. You are correct"
    else
      puts "Seriously? No"
      player.lives -= 1
    end

    if (player.lives == 0)
      game_over = game_over(player)
    end

    is_player1 = !is_player1
  end

  #Create the loop logic for the questions
  def start_game 
    puts " --- Game Start Now --- "
    while !game_over
      if is_player1
        self.generate_question(@player1)
      else
        self.generate_question(@player2)
      end
      puts "#{player1.name} #{player1.lives}/3 vs #{@player2.name} #{player2.lives}/3"
    end
  end
end