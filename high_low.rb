require "pry"
require "colorize"
# require "ascii"

# require_relative "casino"
# module displayabe


class High_low
  attr_accessor :amount 
      def initialize(amount)
      menu(amount)
      @amount = @someamount
      end 

      
      def menu(amount) 
        
        puts "---- Welcome to High/Low ---"
        puts "How much would you like to wager?"
        print "> " 
        @wager = gets.to_i
        puts "1) Roll the dice"
        puts "2) Exit Game"
        user = gets.to_i
        case user
          when 1
            puts "Rolling..."
            sleep(1)
            generate_choices(amount, @wager)
          #this is running method below
          when 2 
            exit
          else puts "Invalid, try again"
                   menu(amount)
         end
      end  
      
      def generate_choices(amount, wager)
        num_player = rand(1..6)
        num_computer = rand(1..6)
        player_roll = num_player
        computer_roll = num_computer
        puts "You rolled a #{player_roll}"
        sleep(1)
        puts "Computer is rolling.. "
        sleep(1)
        puts "Computer has rolled."
        puts "Is your roll higher or lower than Mr. Computer?"
          puts "(1) Higher"
          puts "(2) Lower"
          player_input = gets.to_i
          case player_input
            when 1
              if 
                player_roll > computer_roll && player_roll != computer_roll
                            #this && means both sides need to be true. And the "!=" means "does not equal"
             puts "You win!!!"
             @someamount = amount + wager
             puts "Computer rolled #{computer_roll}"
            

             elsif 
                player_roll == computer_roll
                puts "Tie Game"
                @someamount = amount
                puts "Computer rolled #{computer_roll}"
               
             else 
                puts "You LOSE hahahaha"
                @someamount = amount - wager
                puts "Computer rolled #{computer_roll}"
               
             end

            when 2
              if 
                player_roll < computer_roll && player_roll != computer_roll
                puts "You Win!!"
                @someamount = amount + wager
                puts "Computer rolled #{computer_roll}"
                sleep(1)
               
              elsif 
                player_roll == computer_roll
                puts "Tie Game."
                @someamount = amount
                puts "Computer rolled #{computer_roll}"
                sleep(1)
               
              else 
                puts "You LOSE hahahha"
                @someamount = amount - wager
                puts "Computer rolled #{computer_roll}"
                sleep(1)
               
               
              end
          else
            puts "Wrong Option. Please try again"
            puts "Computer rolled #{computer_roll}"
            sleep(1)
           
          end
            puts "Would you like to play again? (y/n)"
            continue = gets.strip
            if continue == "y"
              menu (@someamount)
            else 
              puts "Goodbye"
              
            end
        end
  end 
