class Board
  attr_accessor :pos

  def initialize
    @pos = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def display_board
    <<~HEREDOC
      \n
      \s#{@pos[0]} | #{@pos[1]} | #{@pos[2]}
      ---|---|---
      \s#{@pos[3]} | #{@pos[4]} | #{@pos[5]}
      ---|---|---
      \s#{@pos[6]} | #{@pos[7]} | #{@pos[8]}
    HEREDOC
  end

  def switch_turn(user_move, select)
    case select
    when 2
      user_symbol = 'X'
      @pos[user_move - 1] = user_symbol
    when 3
      user_symbol = 'O'
      @pos[user_move - 1] = user_symbol
    end
  end
end
