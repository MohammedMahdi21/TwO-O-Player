class Game
  def initialize
    player_1 = "Player 1"
    player_2 = "Player 2"
    @is_player1 = true
    @is_player2 = false
  end

  def generate_question 
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
end