# logic for a round of guessing
class Turn 
  attr_accessor :turn
  
  def initialize (turn)
    @turn = turn
  end  

  def start
    number1 = rand(20)
    number2 = rand(20)

    puts " ------ NEW TURN ------"
    puts "#{player_1.name}, What is the answer to #{number1} + #{number2}"
  end
end