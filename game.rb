require './players.rb'
require './questions.rb'

class Game

  def initialize
    puts "WELCOME TO MATH WARS"
    puts 'Please enter your name, Player One.'
    print '> '
    @player1 = Players.new(gets.chomp)
    @player1.turn = true
    puts 'Please enter your name, Player Two.'
    print '> '
    @player2 = Players.new(gets.chomp)
    # puts "Get ready, #{@player1.name} and #{@player2.name}."
    # sleep(1)
    # print "It's time to play MATH WARS in "
    # sleep(1)
    # print "3"
    # sleep(1)
    # print ', 2'
    # sleep(1)
    # print ', 1... '
    # sleep(1)
  end

  def ask_question
    question = Question.new
    @q = question.question
    @a = question.answer
  
    if @player1.turn
      sleep(1)
      puts "  - #{@player1.name} -"
      puts "#{@q}"
    else 
      sleep(1)
      puts "  - #{@player2.name} -"
      puts "#{@q}"
    end
  end

  def check_answer
    x = STDIN.gets.chomp
    if x.to_i == @a
      puts "correct!"
    else puts "incorrect"
    end
  end

  
  def turn_swap
    if @player1.turn
      @player1.turn = false
      @player2.turn = true
    else
      @player1.turn = true
      @player2.turn = false
    end
  end
  
  def run
    ask_question
    check_answer
    turn_swap
    ask_question
    check_answer
    turn_swap
  end

end

game = Game.new
game.run