require ('./game.rb')
require ('./player.rb')

puts "Player 1: Please enter your name"
name = gets.chomp
player1 = Player.new(name)
puts "Player 2: Please enter your name"
name2 = gets.chomp
player2 = Player.new(name2)
game = Game.new(player1,player2)
game.start_game