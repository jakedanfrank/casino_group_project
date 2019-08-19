require "pry"
require "colorize"


class Rock_Paper_Scissor
    attr_accessor :amount
    def initialize(amount)
        game(amount)
        @amount = @someamount
    end

    def game(amount)
        puts "Welcome to the Rock Paper Scissors game!"
        puts "What is your wager?"
        print "> "
        wager = gets.to_i
        if wager > amount
            puts "You can't wager more than you have"
            game(amount)
        else

        end

        puts "What will you throw?"
        puts "1) Rock"
        puts "2) Paper"
        puts "or"
        puts "3) Scissors"

        print "> "
        choice = gets.to_i
        number = rand(1..3)

        case choice
        when 1
            thechoice = "Rock"
        when 2
            thechoice = "Paper"
        when 3
            thechoice = "Scissors"
        end

        case number
        when 1
            thechoicec = "Rock"
        when 2
            thechoicec = "Paper"
        when 3
            thechoicec = "Scissors"
        end


        puts "************************"
        puts "You threw #{thechoice}"
        puts "The machine threw #{thechoicec}"
        puts "************************"



        if choice == 1 && number == 2
            puts "Paper beats Rock"
            puts "You lose"
            someamount = amount - wager
            if someamount == 0 
                puts "You broke scum. Get out of here!"
                exit
            else
            end

        elsif choice == 1 && number == 3
            puts "Rock beats Scissors"
            puts "You win"
            someamount = wager + amount

        elsif choice == 2 && number == 1
            puts "Paper beats Rock"
            puts "You win"
            someamount = wager + amount

        elsif choice == 2 && number == 3
            puts "Scissors beats Paper"
            puts "You lose"
            someamount = amount - wager
            if someamount == 0 
                puts "You broke scum. Get out of here!"
                exit
            else
            end

        elsif choice == 3 && number == 1
            puts "Rock beats Scissors"
            puts "You lose"
            someamount = amount - wager
            if someamount == 0 
                puts "You broke scum. Get out of here!"
                exit
            else
            end

        elsif choice == 3 && number == 2
            puts "Scissors beats Paper"
            puts "You win"
            someamount = amount + wager

        elsif choice == number
            puts "It's a tie"
            someamount = amount
        end

        puts someamount.to_s

        puts "Do you want to play again? (y/n)"
        continue = gets.strip.downcase
        if continue == "y"
            game(someamount)
        else
            "Next time!"
        end
        @someamount = someamount
    end
end