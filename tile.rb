class Tile
    attr_reader :number
    def initialize(number)
        @number = number
    end
   
    def flip
        @number = "."
    end
end
