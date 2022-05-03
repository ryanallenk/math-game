# logic for setting up a user
# tracks their name and current # of wins

class Player 
  attr_accessor :name :score
  def initialize (name, score = 0)
    @name = name
    @score = score
  end
end

puts "Player 1 - please enter your name"
player1_name = gets.chomp
puts "Player 2 - please enter your name"
player2_name = gets.chomp

player_1 = Player.new(player1_name)
player_2 = Player.new(player2_name)

p player_1
p player_2

