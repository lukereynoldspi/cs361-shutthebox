
require_relative 'game'

game = Game.new
game.play

number_of_dice = 4
number_of_tiles = 9

box = []
number_of_tiles.times do |i|
    box << Tile.new(i+1)
end

dice = []
number_of_dice.times do |i|
    dice << Dice.new
end

sum = 0
print "Current roll: "
number_of_dice.times do |i|
    roll = dice[i].roll
    print roll, " "
    sum += roll
end
puts "\n"

box.length.times do |i|
    print "|#{box[i].number}"
end
puts "|\n Enter the tabs you wish to flip, separated by a space: "

tabs = gets 
tabs = tabs.split
