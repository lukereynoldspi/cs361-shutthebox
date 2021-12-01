require_relative 'dice'
require_relative 'box'

def greeting
    puts "Let's play SHUT THE BOX!"
end


greeting
die = Dice.new
puts "Current roll: #{die.roll}"

dice = []
4.times do |i|
    dice << Dice.new(rand(4..100))
    end
