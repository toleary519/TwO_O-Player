require_relative './game'
require_relative './player'
require_relative './question'

play1 = Player.new

play2 = Player.new

game = Game.new

player = play1
begin
  ques = Question.new
  puts "#{play1.name}: #{ques.prompt}"
  answer = gets.chomp.to_i
  (ques.answer == answer) ? nil : play1.incorrect
  puts "P1: #{play1.lives}/3 --- P2: #{play2.lives}/3"
  if play1.lives == 0
    winner = play1
    game.end_game(winner.name)
    break
  end
  puts game.next_question

  ques = Question.new
  puts "#{play2.name}: #{ques.prompt}"
  answer = gets.chomp.to_i
  (ques.answer == answer) ? nil : play2.incorrect
  puts "P1: #{play1.lives}/3 --- P2: #{play2.lives}/3"
  if play2.lives == 0
    winner = play2
    game.end_game(winner.name)
    break
  end
end while play1.lives > 0 && play2.lives > 0
