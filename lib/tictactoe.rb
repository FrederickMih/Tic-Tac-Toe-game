class TicTacToe < Board
    attr_accessor :one_acc, :player_two, :pos, :two_acc

  def initialize
    super
    @move = []
    @player1_moves = []
    @player2_moves = []
    @curr_player = nil
    @played = []
    @one_acc = []
    @two_acc = []
    @num_check = []
    @pos = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def instructions
    puts '<------> WELCOME TO TIC-TAC-TOE GAME <---------->'
    puts '            How this game works?'
    puts '      You play by putting a mark from 0~8'
    puts '               0 | 1 | 2'
    puts '              --- --- ---'
    puts '               3 | 4 | 5'
    puts '              --- --- ---'
    puts '               6 | 7 | 8'
    puts
  end

 
  def user_info
    puts '<><><><><>...Welcome to your favourite game Tic_Tac_Toe...<><><><><>'
    puts '                                                                   '
    puts "<><><>Kindly enter the player's name in the dialogs below!<><><>"
    puts "--------------------Player one's name---------------------------"
    @player_one = gets.strip
    puts "#{player_one} Please used the symbol [X] to play"
    puts '                                                                  '
    puts "--------------------Player two's name----------------------------"
    @player_two = gets.strip
    puts "#{player_two} Please used the symbol [O] to play"
  end

  

  def make_first_move
    puts "#{@player_one}, <>------ make your move from 1~9 --------<>"
    one_input = gets.chomp
    @user1_index = one_input.to_i
    if one_input !~ /\d\D/
      valid_move(user_move, @one_acc)
    else
      make_first_move
    end
    user_move = @user1_index
    make_first_move unless valid_move(user_move, @one_acc, 1)
    compare = TicTacToe.new
    compare.switch_turn(@one_acc)
  end

  def make_second_move
    puts "#{@player_two}, <>------ make your move from 1~9 --------<>"
    two_input = gets.chomp
    @user2_index = two_input.to_i
    if two_input !~ /\d\D/
      valid_move(user_move, @two_acc)
    else
      make_second_move
    end
    user_move = @user2_index
    make_second_move unless valid_move(user_move, @two_acc, 2)
    compare = TicTacToe.new
    compare.switch_turn(@two_acc)
  end


  def valid_move(user_move, user_acc, select)
    if user_move.is_a(Integer) && user_move.between?(1, 9) && @num_check.none?(user_move)
      switch_turn(user_move, select)
      puts '                              '
      puts display_board
      puts '                              '
      @num_check.push(user_move)
      user_acc.push(user_move)
      true
    else
      puts '                              '
      puts 'Sorry, invalid move! Please, try again.'
      puts '                              '
      false
    end
  end

  def over
    puts 'Do you want to play again?: yes or no'
    play_gain= gets.chomp
    play_gain
  end

  def draw
    puts "It's a draw!!"
  end
end