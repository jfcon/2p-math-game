require './players.rb'
require './questions.rb'

class Game

  def initialize
    puts 'Please enter your name, Player One.'
    print '> '
    @player1 = Players.new(gets.chomp)
    puts 'Please enter your name, Player Two.'
    print '> '
    @player2 = Players.new(gets.chomp)
    puts "Get ready, #{@player1.name} and #{@player2.name}."
    sleep(1)
    print "It's time to play MATH WARS in "
    sleep(1)
    print "3"
    sleep(1)
    print ', 2'
    sleep(1)
    print ', 1... '
    sleep(1)
    puts
  end

end

game = Game.new
game