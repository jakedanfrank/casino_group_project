require "pry"
require "colorize"
# require_relative "casino"


class BlackJack
  
  def initialize
    puts "Welcome to Blackjack"
    bet
  end

  def bet
    puts "The table minimum is $5, please place your bet..."
    print "> $ "

    player_bet = gets.to_i

      if player_bet >= 5
        puts "Let's play!"
        deal
      else
        puts "Sorry, that's not enough to play this game."
        sleep (1)
        broke

      end
  end

  def broke
    puts "Do you want to place another bet, or leave the table?"
    sleep (2)
    puts "Type 'exit' to leave, or 'bet' to place another bet!"
    print "> "
    user_input = gets.strip

      if user_input == "exit"
        exit
      else 
        bet
      end
  end


  def deal
  # @player_hand = []
  # hand_value = 0
  # @dealer_hand = []
  # dealer_value = 0

  @deck = Deck.new
  player_cards = @deck.shuffle_cards.last(2)
  dealer_cards = @deck.shuffle_cards.first(2)

  player_cards.each_with_index do |card, index|
    puts " #{index+1}: Rank: #{card.rank}, suit: #{card.suit}"
  end
  # @player_hand << player_cards
  # @dealer_hand << dealer_cards

  # puts "player_cards.display"
    
  binding.pry
 

#get the cards to show
#convert the cards to total hand (hand_value, dealer_value)
#show player their hand, and show first dealer card.. 

  # while hand_value < 21 do

  #   puts "Would you like another card?"
  #   puts "Enter 'hit' or 'stand' "
  #   input = gets.strip
    
  #   if input = "hit"
  #     card = @deck.shuffle_cards.first(1)
  #     #show new card
  #     #show dealers second card
  #   else
  #     puts "Standing, with #{hand_value}."
  #     #show dealers second card
  #     sleep (2)
  #   end

  #   if hand_value > 21
  #     puts "Bummer, you busted..."
  #   elsif hand_value == 21
  #     puts "BLACKJACK!!!"
  #     sleep (2)
  #     puts "Let's play again!"
  #     puts "Enter 'play' to continue or 'exit' to head back to the casino."
  #   end 

  #     decision = gets.strip
  #     if decision "play"
  #       bet
  #     elsif "exit"
  #       puts "Goodbye."
  #       exit
  #     end

  #   #make bank stand at 17

  #   if hand_value <= 21 && dealer_value <= 21
  #     if hand_value > dealer_value
  #       puts "Woohoo! You Won!"
  #     elsif hand_value < dealer_value
  #       puts "Tough luck, maybe next time."
  #     else
  #       puts "It's a draw."
  #     end
  #   elsif hand_value > 21 && dealer_value <= 21
  #     puts "Tough luck, maybe next time." 
  #   elsif hand_value <= 21 && dealer_value > 21
  #     puts "Woohoo! You Won!"
  #   end
    

  # end

 


  binding.pry
    
    #shuffle cards
    #pull from top
    #need to score points (card num) by @rank
    #deals two cards at random
    #dealer is showing a ____
    #would you like to hit?
  end

end


class Card
  # Getter and Setter methods for rank, suit and color
  attr_accessor :rank, :suit, :color
  # Gets called when you call the new method to create an instance
  # card = Card.new('10', 'K', 'Black')
  def initialize(rank, suit, color)
    @rank = rank
    @suit = suit
    @color = color
  end
 end


class Deck
  # Getter and Setter methods for rank, suit and color
  attr_accessor :cards
 
  # Gets called when you call the new method to create an instance
  # deck = Deck.new
  def initialize
    @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
    @suits = %w(Spades Diamonds Clubs Hearts)
    @cards = []
    generate_deck
  end
 
  def shuffle_cards
   @cards.shuffle
  end
  
  def generate_deck
    @suits.each do |suit|
      @ranks.size.times do |i|
        # Ternary Operator
        color = (suit == 'Spades' || suit == 'Clubs') ? 'Black' : 'Red' 
        @cards << Card.new(@ranks[i], suit, color)
      end
    end
  end
 
   def display_cards(deck)
     deck.shuffle.each do |card|
       puts "#{card.rank} #{card.suit} (#{card.color})"
     end
   end
 end


BlackJack.new
