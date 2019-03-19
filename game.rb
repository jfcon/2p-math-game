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
    print 'Get ready to play MATH WARS in 3'
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