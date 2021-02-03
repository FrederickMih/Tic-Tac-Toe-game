class Board
   attr_accessor :pos

  def initialize
   reset!
 end

 def reset!
   @pos = Array.new(9, "")
 end

 def display_board
    puts " #{@pos[1]} | #{@pos[2]} | #{@pos[3]} "
    puts '--- --- ---'
    puts " #{@pos[4]} | #{@pos[5]} | #{@pos[6]} "
    puts '--- --- ---'
    puts " #{@pos[7]} | #{@pos[8]} | #{@pos[9]} "
 end

 def position(input)
   pos[input.to_i - 1]
 end

 def full?
      pos.all?{|indx| indx == "X" || indx == "O"}
 end

 #  returns the amount of turns base on pos values(counts the cells with an X or O)
 def turn_amount
    pos.count{|char| char == "x" || char == "O"}
 end

 def position_taken?(input)
   position(input) == "X" || position(input) == "O"
 end

end