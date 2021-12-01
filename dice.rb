class Dice

    def initialize(sides: rand(4.. 100))
        @sides = sides
    end

    def roll
        rand(1..@sides)
    end
end