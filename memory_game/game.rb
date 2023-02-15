require_relative "board.rb"
require_relative "card.rb"

class Game

    def initialize
        @board = Board.new
    end

    def make_guess
        p "enter a position"
        answer = gets.chomp.split
        position = answer.map(&:to_i)
        position
    end

    def play

        while @board.win? == false
            Board.guess(self.make_guess)
            #display populated hidden grid
            #make a second guess
            #display populated hidden grid
            #if they match hidden grid stays else goes back to what it was before

        end

       return puts "won!"
        
    end

end