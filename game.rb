
class Game

    def initialize(box, dice)
        @box = box
        @dice = dice
    end

    def greeting
        puts "Let's play SHUT THE BOX!"
    end

    def print_roll
        sum = 0
        print "Current roll: "
        @dice.length.times do |i|
            roll = @dice[i].roll
            print roll, " "
            sum += roll
        end
        print "\n"
    end

    def print_box
        @box.tiles.length.times do |i|
            print "|#{@box.tiles[i].number}"
        end
        print "|\n"
    end

    def play
        greeting
        print_roll
        print_box
    end
end


# number_of_dice = 4
# number_of_tiles = 9

# box = []
# number_of_tiles.times do |i|
#     box << Tile.new(i+1)
# end

# dice = []
# number_of_dice.times do |i|
#     dice << Dice.new
# end

# sum = 0
# print "Current roll: "
# number_of_dice.times do |i|
#     roll = dice[i].roll
#     print roll, " "
#     sum += roll
# end
# puts "\n"

# box.length.times do |i|
#     print "|#{box[i].number}"
# end
# puts "|\n Enter the tabs you wish to flip, separated by a space: "

# tabs = gets 
# tabs = tabs.split
