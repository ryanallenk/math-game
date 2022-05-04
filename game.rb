# setup the logic of a full game

class Game
  attr_accessor :round, :player1, :player2
  def initialize
    @round = 1
    print "Player 1 --- "
    @player1 = Player.new
    print "Player 2 --- "
    @player2 = Player.new
  end

  def start
    puts "Player 1: #{@player1.score} / 3 points. Player 2: #{@player2.score} / 3 points."
    question = Turn.new(@round)
      if question.start
        update_score(@round)
      end
      update_round(@round)
  end

  def update_score(round)
    if round % 2 == 0
      @player2.score += 1
    else 
      @player1.score += 1
    end
    if @player1.score >= 3 || @player2.score >= 3
      puts "Game Over!"
      puts "Final Score: Player 1: #{@player1.score} --- Player 2: #{@player2.score}"
      exit
    end
  end
  
  def update_round(round)
    @round +=1 
    start
  end



end
