require "pry"
require "colorize"
require_relative "rps"

class Casino

    def initialize
        menu
        
    end

    def menu
    puts "Welcome to Big Money Casino"
    Rock_Paper_Scissor.new
    

    end
end


Casino.new






