# logic for setting up a user
# tracks their name and current # of wins

class Player 
  attr_accessor :name, :score
  def initialize ()
    puts "Please enter your name"
    @name = gets.chomp
    @score = 0
  end
end

