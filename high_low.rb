require "pry"
require "colorize"

# require_relative "casino"
# module displayabe

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

#  Deck Class
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

  def display_cards
    @cards.shuffle.each do |card|
      puts "#{card.rank} #{card.suit} (#{card.color})"
    end
  end
end


# class Person 

# end 

# class Computer 

# end 







class High_low
  def initialize
    puts display_cards
  end 

end 
 
  def dealer
 @deck = Deck.new
 player_cards = @deck.shuffle_cards.last(2)
 dealer_cards = @deck.shuffle_cards.first(2)




    end

 
   
# High_low.new



# Deck.new

# @deck = Deck.new
#  player_cards = @deck.shuffle_cards.last(2)
#  dealer_cards = @deck.shuffle_cards.first(2)
