require './players.rb'
require './questions.rb'

class Game

  def initialize
    puts "WELCOME TO MATH WARS"
    sleep(2)
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
    # print ', 1... \n'
    # sleep(1)
  end

  def ask_question
    question = Question.new
    @q = question.question
    @a = question.answer
    turn_phrase = [", you're up!", ", it's your turn.", "'s turn to answer.", ", come on down!!"]
    

    if @player1.turn
      sleep(1)
      puts "  - #{@player1.name}#{turn_phrase.sample} -"
      puts "#{@q}\n\n"
      print "> "
    else 
      sleep(1)
      puts "  - #{@player2.name}#{turn_phrase.sample} -"
      puts "#{@q}\n\n"
      print "> "
    end
  end

  def check_answer
    ans_given = STDIN.gets.chomp
    if ans_given.to_i == @a
      puts "Correct!\n\n"
      scoreboard
    else 
      puts "Incorrect!\nThe answer was #{@a.to_s}.\n\n"
      life
      scoreboard
    end
  end

  def scoreboard
    sleep(1)
    puts "--- Current Score ---"
    puts "#{@player1.name}: #{@player1.lives}/3 -- #{@player2.name}: #{@player2.lives}/3\n\n"
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
  
  def life
    if @player1.turn
      @player1.lose_life
    else
      @player2.lose_life
    end
  end

  def game_over
    if @player2.turn
      puts "Congratulations #{@player2.name}, you win!"
    else
      puts "Congratulations #{@player1.name}, you win!"
    end
  end

  def run
    while @player1.lives > 0 && @player2.lives > 0 
    ask_question
    check_answer
    turn_swap
    end
    game_over
  end
end

game = Game.new
game.run