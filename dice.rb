require "pry"
require "colorize"
require "sounder"
# require_relative "casino"

    def game(amount)
        puts "How much would you like to wager?"
        print "> "
        @wager = gets.strip.to_i
        roll_dice
        gather sames
        choice


















    end






end
