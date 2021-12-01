
require_relative 'game'
require_relative 'box'
require_relative 'dice'
require_relative 'tile'

number_of_tiles = 9
number_of_dice = 2


tiles = []
number_of_tiles.times do |i|
    tiles << Tile.new(i + 1)
end
box = Box.new(tiles)

dice = []
number_of_dice.times do |i|
    dice << Dice.new
end

game = Game.new(box, dice)
game.play
