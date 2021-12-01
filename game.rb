
class Game

    def initialize(box, dice)
        @box = box
        @dice = dice
        @sum = 0
    end

    def greeting
        puts "Let's play SHUT THE BOX!"
    end

    def print_roll
        print "Current roll: "
        @dice.length.times do |i|
            roll = @dice[i].roll
            print roll, " "
            @sum += roll
        end
        print "\n"
    end

    def print_box
        @box.tiles.length.times do |i|
            print "|#{@box.tiles[i].number}"
        end
        print "|\n"
    end

    def get_player_input
        puts "Enter the tabs you wish to flip, separated by a space: "
        tabs = gets 
        tabs = tabs.split
        tabs.length.times do |i|
            tabs[i] = tabs[i].to_i
        end
        if tabs.sum != @sum then
            puts "Tabs sum to incorrect number"
        end
    end

    def play
        greeting
        print_roll
        print_box
        get_player_input
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
