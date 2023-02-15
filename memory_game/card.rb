class Card

    attr_reader :visible, :face_value

    def initialize(symbol)
        @face_value = symbol
        @visible = false
    end

    def hide
        @visible = false     
    end

    def reveal
        if @visible == true
            @face_value
        end
    end

end


if $PROGRAM_NAME == __FILE__
    p test = Card.new
    p test.face_up
    p test.hide
    p test.face_value
    p test.face_value

    p test_2 = Card.new
    p test_2.face_value
    p test_2.face_value


end