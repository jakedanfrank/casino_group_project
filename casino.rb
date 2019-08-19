require "pry"
require "colorize"
require_relative "high_low"  #! require pry and require colorize is not needed in each file, only casino.rb. also REMOVE require_relative "casino". It causes an annoying loop.
require_relative "rps"      
require_relative "slots"
require_relative "war"
require_relative "blackjack"
require_relative "dice"

class Casino
    
    def initialize
        welcome
        menu
    end
    
    def welcome 
        puts " 
         __       __            __                                                      __                                                             
        /  |  _  /  |          /  |                                                    /  |                                                            
        $$ | / \\ $$ |  ______  $$ |  _______   ______   _____  ____    ______         _$$ |_     ______                                                
        $$ |/$  \\$$ | /      \\ $$ | /       | /      \\ /     \\/    \\  /      \\       / $$   |   /      \\                                               
        $$ /$$$  $$ |/$$$$$$  |$$ |/$$$$$$$/ /$$$$$$  |$$$$$$ $$$$  |/$$$$$$  |      $$$$$$/   /$$$$$$  |                                              
        $$ $$/$$ $$ |$$    $$ |$$ |$$ |      $$ |  $$ |$$ | $$ | $$ |$$    $$ |        $$ | __ $$ |  $$ |                                              
        $$$$/  $$$$ |$$$$$$$$/ $$ |$$ \\_____ $$ \\__$$ |$$ | $$ | $$ |$$$$$$$$/         $$ |/  |$$ \\__$$ |                                              
        $$$/    $$$ |$$       |$$ |$$       |$$    $$/ $$ | $$ | $$ |$$       |        $$  $$/ $$    $$/                                               
        $$/      $$/  $$$$$$$/ $$/  $$$$$$$/  $$$$$$/  $$/  $$/  $$/  $$$$$$$/          $$$$/   $$$$$$/                                                
                                                                                                                                                       
                                                                                                                                                       
                                                                                                                                                       
         _______   __                  __       __                                                 ______                       __                     
        /       \\ /  |                /  \\     /  |                                               /      \\                     /  |                    
        $$$$$$$  |$$/   ______        $$  \\   /$$ |  ______   _______    ______   __    __       /$$$$$$  |  ______    _______ $$/  _______    ______  
        $$ |__$$ |/  | /      \\       $$$  \\ /$$$ | /      \\ /       \\  /      \\ /  |  /  |      $$ |  $$/  /      \\  /       |/  |/       \\  /      \\ 
        $$    $$< $$ |/$$$$$$  |      $$$$  /$$$$ |/$$$$$$  |$$$$$$$  |/$$$$$$  |$$ |  $$ |      $$ |       $$$$$$  |/$$$$$$$/ $$ |$$$$$$$  |/$$$$$$  |
        $$$$$$$  |$$ |$$ |  $$ |      $$ $$ $$/$$ |$$ |  $$ |$$ |  $$ |$$    $$ |$$ |  $$ |      $$ |   __  /    $$ |$$      \\ $$ |$$ |  $$ |$$ |  $$ |
        $$ |__$$ |$$ |$$ \\__$$ |      $$ |$$$/ $$ |$$ \\__$$ |$$ |  $$ |$$$$$$$$/ $$ \\__$$ |      $$ \\__/  |/$$$$$$$ | $$$$$$  |$$ |$$ |  $$ |$$ \\__$$ |
        $$    $$/ $$ |$$    $$ |      $$ | $/  $$ |$$    $$/ $$ |  $$ |$$       |$$    $$ |      $$    $$/ $$    $$ |/     $$/ $$ |$$ |  $$ |$$    $$/ 
        $$$$$$$/  $$/  $$$$$$$ |      $$/      $$/  $$$$$$/  $$/   $$/  $$$$$$$/  $$$$$$$ |       $$$$$$/   $$$$$$$/ $$$$$$$/  $$/ $$/   $$/  $$$$$$/  
                      /  \\__$$ |                                                 /  \\__$$ |                                                            
                      $$    $$/                                                  $$    $$/                                                             
                       $$$$$$/                                                    $$$$$$/                                                              "
        puts "*" * 35
        puts "What is your name bruh?"
        print "> "
        name = gets.strip
        User.new(name)
        puts "How much do you have on you?"
        amount = gets.strip.to_i
        if amount > 0
            puts "Welcome in..."
            @walletoriginal = Walletoriginal.new(amount) #This code here creates a copy
            @wallet = Wallet.new(@walletoriginal.oamount)
        else
            puts "Get out of here you cheap, dirty rat!"
            welcome
        end
    end
        
        
        
    def menu
        
        puts "What game would you like to begin? "
        puts "1) Blackjack"
        puts "2) Dice (Out of order)"
        puts "3) Rock, Paper, Scissors"
        puts "4) High Low"
        puts "5) Slots"
        puts "6) War (Out of order)"
        puts "7) Exit"
        choice = gets.strip.to_i
        case choice 
        when 1
            newamount = BlackJack.new(@wallet.amount)
            @wallet.amount = newamount.amount
            menu
        when 2
            #dice.new(@wallet.amount)
            menu
        when 3
            newamount = Rock_Paper_Scissor.new(@wallet.amount)
            binding.pry
            @wallet.amount = newamount.amount
            menu
        when 4
            newamount = High_low.new(@wallet.amount)
            @wallet.amount = newamount.amount
            menu#high_low.new(@wallet.amount)
        when 5
            newamount = Slots.new(@wallet.amount)
            @wallet.amount = newamount.amount 
            menu
        when 6
            #war.new(@wallet.amount)
            menu
        when 7
            puts "You walked in with: " + @walletoriginal.oamount.to_s
            puts "You are walking home with: " + @wallet.amount.to_s
            if @walletoriginal.oamount > @wallet.amount
                puts "Better luck next time bucko!"
            elsif @walletoriginal.oamount == @wallet.amount
                puts "Eh, at least you broke even and had a fun time"
            elsif @walletoriginal.oamount < @wallet.amount
                puts "Good job!"
            end
            puts "Come again soon!"
            
        else
            puts "Invalid choice. Please try again"
            menu 
        end    
    end

end
    
class Wallet
    attr_accessor :amount
    def initialize(amount)
        @amount = amount
        
    end
end

class Walletoriginal ###########!ignore this guy. This is just a clone of Wallet for menu selection 7
    attr_accessor :oamount
    def initialize(amount)
        @oamount = amount
        
    end
    
end

class User
    attr_accessor :name
    def initialize(name)
        @name = name
        
    end
    
end

Casino.new


    
    
    
    
    #! Basic Objectives:
    
    # DONE Start game player has a name and a wallet
    # Player can go to different games via menu
    # Slots
    # High / Low
# Use classes to start the casino, bankroll, and each individual game
# Player places bet and wins / loses (hint: rand)
# The player should have a Wallet and the Wallet should be its own class with remove and add methods (OOP)
# Player's bankroll goes up and down with wins and losses
# Ability to move to and from games
 

# Bonus Objectives:

# Find a gem that allows you to play sound and find casino sounds that will play on each game change/events
# Gem discovery: go to rubygems.org and find more gems that you want to implement in your project and use
# Find ASCII Art and put it into your games/menus to make it more fun for the end user
# Ability to switch players (player menu, bankroll information)
# Player's bankroll persists while moving from game to game
# Player's bankroll persists if you switch to different players
# Random events occur when changing games that can increase or decrease player's bankroll
# Roulette
# Craps
# Build a card deck (hint: this is in today's lesson content)
# Card games (Blackjack, Poker, Casino War, etc...)
# Any other Casino game you can think of
# Create your own game
 

# NOTES:

# I highly recommend that once you complete a game in the casino go back through all of the code as a group 
# and refactor it. Look for any code that is not DRY (Don't repeat yourself) and move it into common methods. 
# Look for things that can be used in variables etc... If you have any questions about refactoring please find 
# any of the TA's or me and we can assist you with it!