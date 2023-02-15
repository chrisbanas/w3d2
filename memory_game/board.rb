require_relative "card"

class Board

    attr_reader :grid

    def initialize
        @grid = Array.new(2) {Array.new(2, "_")}
        @hidden = Array.new(2) {Array.new(2, "_")}
        @old_pos = ""
        @second_pos = ""
    end

    def populate
        card1 = Card.new(:C)
        card2 = Card.new(:F)
        
        @grid[0][0] = card1.face_value.to_s
        @grid[0][1] = card2.face_value.to_s
        @grid[1][0] = card1.face_value.to_s
        @grid[1][1] = card2.face_value.to_s
    end

    def [](position)
        row, col = position
        @grid[row][col]
    end

    def []=(position, value)
        row, col = position
        @grid[row][col] = value

    end

    def reveal?(position)
        row, col = position
        @grid[row][col] 
    end

    def guess(position)

        if @old_pos = ""
            @old_pos = position
        elsif 
            @old_pos == position
            raise "entered duplicate position"
        else 
            @second_pos = position
        end

    end

    def check_grid
        if @grid[@old_pos] == @grid[@second_pos]
            hidden[@old_pos] = @grid[@old_pos]
            hidden[@old_pos] = @grid[@second_pos]
            @old_pos = ""
            @second_pos = ""
            return true
        else
            @old_pos = ""
            @second_pos = ""
            return false
        end
    end

    def win?
        @grid == @hidden 
    end



end

if $PROGRAM_NAME == __FILE__
    p test = Board.new
    p test.grid
    test.populate
    p test.grid
    p test.hidden


end