require_relative 'greeting'
require_relative 'dice'
require_relative 'tile'

class Game
    def greeting
        puts "Let's play SHUT THE BOX!"
    end
    
    def play
        greeting
    end
end