# logic for a round of guessing
# returns true for correct and false for incorrect 

class Turn 
  attr_accessor :turn
  
  def initialize (turn)
    @turn = turn
  end  

  def start
    number1 = rand(20)
    number2 = rand(20)

    puts " ------ ROUND #{@turn} ------"
    puts @turn % 2 == 0 ? "Player 2: " : "Player 1: " 
    puts "What is the answer to #{number1} + #{number2}"
    print "Your Answer: "

    answer = $stdin.gets.chomp.to_i

    if answer == number1 + number2
      puts "Yes, you are correct"
      return true
    else
      puts "Seriously? No that is incorrect"
      return false
    end
  end
end

