require_relative 'dice'
require_relative 'box'

class Game
    def greeting
        puts "Let's play SHUT THE BOX!"
    end

    def play
        greeting
        
        dice = []
        4.times do |i|
            dice << Dice.new
        end
        print "Current roll: "
        4.times do |i|
            print dice[i].roll, " "
        end
    end
end