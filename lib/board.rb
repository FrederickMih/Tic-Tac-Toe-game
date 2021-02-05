class Board < Play
  def display_board
    p " #{@pos[0]} | #{@pos[1]} | #{@pos[2]} "
    p '--- --- ---'
    p " #{@pos[3]} | #{@pos[4]} | #{@pos[5]} "
    p '--- --- ---'
    p " #{@pos[6]} | #{@pos[7]} | #{@pos[8]} "
  end

  def switch_turn(user_move)
    if user_move == @user1_index
      user_symbol = 'X'
      @pos[@user1_index - 1] = user_symbol
    elsif user_move == @user2_index
      user_symbol = 'O'
      @pos[@user2_index - 1] = user_symbol
    end
  end
end
