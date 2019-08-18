require "pry"
require "colorize"
require_relative "casino"

class Game
  def initialize
    @wallet = {}
    @bet = {}

  @numbers = [ "1", "2", "3" ]
  
    puts "--- SLOTS! SLOTS! SLOTS! ---"
    puts 
    puts
    puts
    sleep 1
    puts "--- What is your name? ---"
    @name = gets.strip
    puts 
    puts
    puts "--- How Much Money Do You Have? ---"
    @wallet = gets.to_i
    
    # @bet > @cash?
    # then does not work
    
    puts
    puts "--- Welcome #{@name}! You have $#{@wallet} ---"
    puts 

    
    menu
  end

  def menu
    puts "1) --- To Play Slots ---"
    puts "2) --- Exit Big Money Casino ---"
    # puts "3) --- Main Menu ---""
    choice = gets.to_i
    case choice 
    when 1
      # puts "--- PLACE YOUR BET ---"
      # puts
      # @Bet = gets.to_i
      # puts
      # puts "Bet Placed At $#{@Bet}"
      # puts
      # puts 
      bet
    when 2 
      puts "--- GOODBYE! ---"
      puts 
      exit!
    # when 3
    #   puts "--- Thanks For Playing Slots! ---"
      # main_menu or @main_menu
    else
      puts "Sorry #{@name}, You Are Too Drunk To Gamble."
      puts
      puts 
      sleep 4
      exit!
      bet 
    end
  end
  
  def bet 
    puts "--- PLACE YOUR BET ---"
    puts
    @Bet = gets.to_i
    puts
    puts "Bet Placed At $#{@Bet}"
    puts
    puts 
    play_slots
  end

  def play_slots
    
    #  ------ go to bet method -----
    # ----- in the bet method, 
    # They win? @bet * three (whatever you want them to win)

    # if they lose @wallet - @bet = new @wallet
    #--------------------------------------------------------------------------
    # get 3 nums and save them to variables
    num_1 = @numbers.sample
    num_2 = @numbers.sample
    num_3 = @numbers.sample
    # Display all 3 numbers 
    
    print "[#{num_1}]"
    print "[#{num_2}]"
    puts "[#{num_3}]"

      if num_1 == num_2 && num_2 == num_3
        puts 
        puts "--- YOU WON THE JACKPOT! ---"
        puts
      elsif num1 == num3 
        puts 
        puts "---"
      
      # elsif num_1 == num_3
      # elsif num_2 == num_3
      # elsif num_1 == num_2
      #   puts "YOu win 25000 $$"
      # elsif num_1 + num_2 + num_3 == 8

      # else 
      #   puts "you lose money"
      # end


    # logic to see if you won or not


    # # call another method result
    # def results
   
      end 
  end
end
Game.new