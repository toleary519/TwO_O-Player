require_relative './player'

class Game 
  attr_reader :winner

  def next_question
    return "--- Next Question ---"
  end

  def end_game(winner)
    puts "#{winner} has no move lives! Game Over!"
  end

end  