class Pig
    attr_accessor :amount
    def initialize(amount)
        puts "Welcome to Pig!"
        puts "Lets see if you know when to stop!"
        game(amount)
        @amount = @someamount
    end

    def game(amount)
        puts "How much would you like to wager?"
        print "> "
        @wager = gets.strip.to_i
        roll_dice
        gather sames
        choice


















    end






end