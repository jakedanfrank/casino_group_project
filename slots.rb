require "pry"
require "colorize"
# require_relative "casino"
require "sounder"

class Slots
  attr_accessor :amount
  def initialize(amount)
    
    @sound = Sounder::Sound.new "Sounds/slots.mp3"
    @sound.play
    @numbers = [ "A", "1", "2", "3", "4", "5", "6", "7", "8", "A"]
    puts "                                                                                                                                          
                                                                                                                                           
   SSSSSSSSSSSSSSS LLLLLLLLLLL                  OOOOOOOOO     TTTTTTTTTTTTTTTTTTTTTTT   SSSSSSSSSSSSSSS                                    
  SS:::::::::::::::SL:::::::::L                OO:::::::::OO   T:::::::::::::::::::::T SS:::::::::::::::S                                   
 S:::::SSSSSS::::::SL:::::::::L              OO:::::::::::::OO T:::::::::::::::::::::TS:::::SSSSSS::::::S                                   
 S:::::S     SSSSSSSLL:::::::LL             O:::::::OOO:::::::OT:::::TT:::::::TT:::::TS:::::S     SSSSSSS                                   
 S:::::S              L:::::L               O::::::O   O::::::OTTTTTT  T:::::T  TTTTTTS:::::S                                               
 S:::::S              L:::::L               O:::::O     O:::::O        T:::::T        S:::::S                                               
  S::::SSSS           L:::::L               O:::::O     O:::::O        T:::::T         S::::SSSS                                            
   SS::::::SSSSS      L:::::L               O:::::O     O:::::O        T:::::T          SS::::::SSSSS                                       
     SSS::::::::SS    L:::::L               O:::::O     O:::::O        T:::::T            SSS::::::::SS                                     
        SSSSSS::::S   L:::::L               O:::::O     O:::::O        T:::::T               SSSSSS::::S                                    
             S:::::S  L:::::L               O:::::O     O:::::O        T:::::T                    S:::::S                                   
             S:::::S  L:::::L         LLLLLLO::::::O   O::::::O        T:::::T                    S:::::S                                   
 SSSSSSS     S:::::SLL:::::::LLLLLLLLL:::::LO:::::::OOO:::::::O      TT:::::::TT      SSSSSSS     S:::::S                                   
 S::::::SSSSSS:::::SL::::::::::::::::::::::L OO:::::::::::::OO       T:::::::::T      S::::::SSSSSS:::::S                                   
 S:::::::::::::::SS L::::::::::::::::::::::L   OO:::::::::OO         T:::::::::T      S:::::::::::::::SS                                    
  SSSSSSSSSSSSSSS   LLLLLLLLLLLLLLLLLLLLLLLL     OOOOOOOOO           TTTTTTTTTTT       SSSSSSSSSSSSSSS                                                           
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
                                  SSSSSSSSSSSSSSS LLLLLLLLLLL                  OOOOOOOOO     TTTTTTTTTTTTTTTTTTTTTTT   SSSSSSSSSSSSSSS      
                                SS:::::::::::::::SL:::::::::L                OO:::::::::OO   T:::::::::::::::::::::T SS:::::::::::::::S     
                               S:::::SSSSSS::::::SL:::::::::L              OO:::::::::::::OO T:::::::::::::::::::::TS:::::SSSSSS::::::S     
                               S:::::S     SSSSSSSLL:::::::LL             O:::::::OOO:::::::OT:::::TT:::::::TT:::::TS:::::S     SSSSSSS     
                               S:::::S              L:::::L               O::::::O   O::::::OTTTTTT  T:::::T  TTTTTTS:::::S                 
                               S:::::S              L:::::L               O:::::O     O:::::O        T:::::T        S:::::S                 
                                S::::SSSS           L:::::L               O:::::O     O:::::O        T:::::T         S::::SSSS              
                                 SS::::::SSSSS      L:::::L               O:::::O     O:::::O        T:::::T          SS::::::SSSSS         
                                   SSS::::::::SS    L:::::L               O:::::O     O:::::O        T:::::T            SSS::::::::SS       
                                      SSSSSS::::S   L:::::L               O:::::O     O:::::O        T:::::T               SSSSSS::::S      
                                           S:::::S  L:::::L               O:::::O     O:::::O        T:::::T                    S:::::S     
                                           S:::::S  L:::::L         LLLLLLO::::::O   O::::::O        T:::::T                    S:::::S     
                               SSSSSSS     S:::::SLL:::::::LLLLLLLLL:::::LO:::::::OOO:::::::O      TT:::::::TT      SSSSSSS     S:::::S     
                               S::::::SSSSSS:::::SL::::::::::::::::::::::L OO:::::::::::::OO       T:::::::::T      S::::::SSSSSS:::::S     
                               S:::::::::::::::SS L::::::::::::::::::::::L   OO:::::::::OO         T:::::::::T      S:::::::::::::::SS      
                                SSSSSSSSSSSSSSS   LLLLLLLLLLLLLLLLLLLLLLLL     OOOOOOOOO           TTTTTTTTTTT       SSSSSSSSSSSSSSS        
                                                                                                                                            
                                                                                                                                            
                                                                            
    SSSSSSSSSSSSSSS LLLLLLLLLLL                  OOOOOOOOO     TTTTTTTTTTTTTTTTTTTTTTT   SSSSSSSSSSSSSSS                                    
  SS:::::::::::::::SL:::::::::L                OO:::::::::OO   T:::::::::::::::::::::T SS:::::::::::::::S                                   
 S:::::SSSSSS::::::SL:::::::::L              OO:::::::::::::OO T:::::::::::::::::::::TS:::::SSSSSS::::::S                                   
 S:::::S     SSSSSSSLL:::::::LL             O:::::::OOO:::::::OT:::::TT:::::::TT:::::TS:::::S     SSSSSSS                                   
 S:::::S              L:::::L               O::::::O   O::::::OTTTTTT  T:::::T  TTTTTTS:::::S                                               
 S:::::S              L:::::L               O:::::O     O:::::O        T:::::T        S:::::S                                               
  S::::SSSS           L:::::L               O:::::O     O:::::O        T:::::T         S::::SSSS                                            
   SS::::::SSSSS      L:::::L               O:::::O     O:::::O        T:::::T          SS::::::SSSSS                                       
     SSS::::::::SS    L:::::L               O:::::O     O:::::O        T:::::T            SSS::::::::SS                                     
        SSSSSS::::S   L:::::L               O:::::O     O:::::O        T:::::T               SSSSSS::::S                                    
             S:::::S  L:::::L               O:::::O     O:::::O        T:::::T                    S:::::S                                   
             S:::::S  L:::::L         LLLLLLO::::::O   O::::::O        T:::::T                    S:::::S                                   
 SSSSSSS     S:::::SLL:::::::LLLLLLLLL:::::LO:::::::OOO:::::::O      TT:::::::TT      SSSSSSS     S:::::S                                   
 S::::::SSSSSS:::::SL::::::::::::::::::::::L OO:::::::::::::OO       T:::::::::T      S::::::SSSSSS:::::S                                   
 S:::::::::::::::SS L::::::::::::::::::::::L   OO:::::::::OO         T:::::::::T      S:::::::::::::::SS                                    
  SSSSSSSSSSSSSSS   LLLLLLLLLLLLLLLLLLLLLLLL     OOOOOOOOO           TTTTTTTTTTT       SSSSSSSSSSSSSSS                                                                         
                                                                                                                                                                                   
    ".yellow
    sleep 1
    # puts "--- What is your name? ---"
    # @name = gets.strip
    # puts 
    # puts
    # puts "--- How Much Money Do You Have? ---"
    # @wallet = gets.to_i
    
    # @bet > @cash?
    # then does not work
    puts
    puts "--- Welcome! You have $#{amount} ---".green
    puts 
    menu(amount)
    @amount = @someamount
  end
  def menu(amount)
    puts "1) --- To Play Slots ---".magenta
    puts "2) --- Main Menu ---".magenta
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
      bet(amount)
    when 2
      puts "--- Thanks For Playing Slots! ---".magenta
      # Casino.new
      # Sends you back to big money page
    else
      puts "Sorry #{@name}, You Are Too Drunk To Gamble.".yellow
      puts
      puts 
      sleep 4
      exit 
    end
  end
  def bet(amount)
    puts "--- PLACE YOUR BET ---".green
    puts
    bet = gets.to_i
    puts
    puts "Bet Placed At $#{bet}".green
    sleep 1
    puts
    puts 
    play_slots(amount, bet)
  end
  def play_slots(amount, bet)
    @sound = Sounder::Sound.new "Sounds/slots.mp3"
    @sound.play
    
    #  ------ go to bet method -----
    # ----- in the bet method, 
    # They win? @bet * three (whatever you want them to win)

    # if they lose @wallet - @bet = new @wallet
    #--------------------------------------------------------------------------
    num_1 = @numbers.sample
    num_2 = @numbers.sample      # get 3 nums and save them to variables
    num_3 = @numbers.sample
    print "[#{num_1}]".cyan
    print "[#{num_2}]".cyan
    puts "[#{num_3}]".cyan
      if num_1 == num_2 && num_2 == num_3
        puts 
        puts "--- YOU WIN! ---".green
        @someamount = amount + bet
        @sound = Sounder::Sound.new "Sounds/winner.mp3"
        @sound.play
        puts
        sleep 1
        menu(@someamount)
      elsif num_1 == num_3 
        puts 
        puts "--- YOU WIN! ---".green
        @someamount = amount + bet
        @sound = Sounder::Sound.new "Sounds/winner.mp3"
        @sound.play
        puts
        sleep 1
        menu(@someamount) 
      elsif num_1 == num_3 && num_2 == "A"
        puts
        puts "--- YOU WIN! ---".green
        @someamount = amount + bet
        @sound = Sounder::Sound.new "Sounds/winner.mp3"
        @sound.play
        puts
        sleep 1
        menu(@someamount) 
      elsif num_1 == "A" && num_2 == "A" && num_3 == "A"
        puts 
        puts "- $ - $ - $  YOU WON THE JACKPOT! $ - $ - $ -".green
        @someamount = amount + (bet * 2)

        @sound = Sounder::Sound.new "Sounds/winner.mp3"
        @sound.play
        puts
        sleep 2
        menu(@someamount) 
      elsif num_1 == "A" && num_3 == "A"
        puts
        puts "--- YOU WIN! ---".green
        @someamount = amount + bet
        @sound = Sounder::Sound.new "Sounds/winner.mp3"
        @sound.play
      else
        puts
        puts "--- YOUR $#{bet} NOW BELONGS TO BIG MONEY CASINO ---".red
        @someamount = amount - bet

        @sound = Sounder::Sound.new "Sounds/lose.mp3"
        @sound.play
        puts 
        sleep 2
        menu(@someamount)
        end
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
