require "pry"
require "colorize"



class BlackJack
  
  def initialize
    puts "


    ▄▄▄▄· ▄▄▌   ▄▄▄·  ▄▄· ▄ •▄  ▐▄▄▄ ▄▄▄·  ▄▄· ▄ •▄
    ▐█ ▀█▪██•  ▐█ ▀█ ▐█ ▌▪█▌▄▌▪  ·██▐█ ▀█ ▐█ ▌▪█▌▄▌▪
    ▐█▀▀█▄██▪  ▄█▀▀█ ██ ▄▄▐▀▀▄·▪▄ ██▄█▀▀█ ██ ▄▄▐▀▀▄·
    ██▄▪▐█▐█▌▐▌▐█ ▪▐▌▐███▌▐█.█▌▐▌▐█▌▐█ ▪▐▌▐███▌▐█.█▌
    ·▀▀▀▀ .▀▀▀  ▀  ▀ ·▀▀▀ ·▀  ▀ ▀▀▀• ▀  ▀ ·▀▀▀ ·▀  ▀                     ".red
    sleep (1)

    puts "Welcome to Blackjack.".red
                                             
    bet
  end

  def bet
    puts "The table minimum is $5, and you can only hit once..."
    puts "Want to test your luck, please place your bet..."
    
    print "> $ "

    player_bet = gets.to_i

      if player_bet >= 5
        puts "Let's play!".red
        sleep (2)
        deal
      else
        puts "Sorry, that's not enough to play this game.".light_blue
        sleep (1)
        broke

      end
  end

  def broke
    puts "Do you want to place another bet, or leave the table?"
    sleep (2)
    puts "Type 'exit' to leave, or 'bet' to place another bet!".cyan
    print "> "
    user_input = gets.strip

      if user_input == "exit"
        puts "Goodbye".cyan
        
      else 
        bet
      end
  end

  

  def deal

  @deck = Deck.new
  player_cards = @deck.shuffle_cards.last(2)
  @dealer_cards = @deck.shuffle_cards.first(2)
  

  puts "Your first card is a #{player_cards[0].rank} of #{player_cards[0].suit}"
  sleep (1)
  puts "Your second card is a #{player_cards[1].rank} of #{player_cards[1].suit}"
  sleep (2)
  puts "The dealer is showing a #{@dealer_cards[0].rank} of #{@dealer_cards[0].suit}"
  sleep (1)  
  
  @card_one = player_cards[0].value.to_i
  @card_two = player_cards[1].value.to_i
  @dealer_one = @dealer_cards[0].value.to_i
  @dealer_two = @dealer_cards[1].value.to_i

  play

  end


  def play
  @hand_value = @card_one + @card_two 
  @dealer_value = @dealer_one + @dealer_two
      
  if @hand_value < 21 

    puts "Would you like another card?".red
    puts "Enter 'hit' or 'stand' ".cyan
    input = gets.strip
    
    if input == "hit"
      card = @deck.shuffle_cards.first
      new_value = card.value.to_i
      @hand_value << new_value

      puts "You got a #{card.rank} of #{card.suit}"
      
      sleep (1)
      puts "The dealer's second card is a #{@dealer_cards[1].rank} of #{@dealer_cards[1].suit}"
      sleep (1)
      win
    else
      puts "Standing, with #{@hand_value}.".red
      sleep (1)
      puts "The dealer's second card is a #{@dealer_cards[1].rank} of #{@dealer_cards[1].suit}"
      sleep (1)
      win
    end
  end
  end


def win
    if @hand_value > 21
      puts "Bummer, you busted..."
      puts "Let's play again!".red
      puts "Enter 'play' to continue or 'exit' to head back to the casino.".cyan
    elsif @hand_value == 21
      puts "BLACKJACK!!!"
      sleep (1)
      puts "Let's play again!".red
      puts "Enter 'play' to continue or 'exit' to head back to the casino.".cyan
    end 

    if @hand_value <= 21 && @dealer_value <= 21
      if @hand_value > @dealer_value
        puts "Woohoo! You Won!"
        sleep (1)
        puts "Let's play again!".red
        puts "Enter 'play' to continue or 'exit' to head back to the casino.".cyan
      elsif @hand_value < @dealer_value
        puts "Tough luck, maybe next time."
        sleep (1)
        puts "Let's play again!".red
        puts "Enter 'play' to continue or 'exit' to head back to the casino.".cyan
      else
        puts "It's a draw."
        sleep (1)
        puts "Let's play again!".red
        puts "Enter 'play' to continue or 'exit' to head back to the casino.".cyan
      end
    elsif @hand_value > 21 && @dealer_value <= 21
      puts "Tough luck, maybe next time." 
      sleep (1)
      puts "Let's play again!".red
      puts "Enter 'play' to continue or 'exit' to head back to the casino.".cyan
    elsif @hand_value <= 21 && @dealer_value > 21
      puts "Woohoo! You Won!"
      sleep (1)
      puts "Let's play again!".red
      puts "Enter 'play' to continue or 'exit' to head back to the casino.".cyan
    end

    decision = gets.strip
      if decision == "play"
        bet
      elsif decision == "exit"
        puts "Goodbye.".cyan
        
      end
   
  end
  

end
#make bank stand at 17

class Card
  # Getter and Setter methods for rank, suit and color
  attr_accessor :value, :rank, :suit, :color
  # Gets called when you call the new method to create an instance
  # card = Card.new('10', 'K', 'Black')
  def initialize(value, rank, suit, color)
    @value = value
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
    @value = %w(11 2 3 4 5 6 7 8 9 10 10 10 10)
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
        @cards << Card.new(@value[i], @ranks[i], suit, color)
      end
    end
  end
 
   def display_cards(deck)
     deck.shuffle.each do |card|
       puts "#{card.value} #{card.rank} #{card.suit} (#{card.color})"
     end
   end
 end



