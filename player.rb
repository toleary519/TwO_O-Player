class Player
  attr_reader :name, :lives
  attr_writer :name

  def initialize
    puts "Enter player Name"
    @name = $stdin.gets.chomp
    @lives = 3
  end

  def incorrect
    @lives -= 1
  end
  
end