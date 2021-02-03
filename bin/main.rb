#!/usr/bin/env ruby

require_relative '../lib/play_game.rb'
require_relative '../lib/board.rb'

class TicTacToe
  attr_accessor :board, :turn, :player_one, :player_two

  def initialize
    @board = %w[] * 9
    @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    # @turn = turn
    @played = []
  end

  # instructions on how to play this game
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

  # Get users names and assign their symbol
  def user_info
    puts '<><><><><>...Welcome to your favourite game Tic_Tac_Toe...<><><><><>'
    puts "                                                                   "
    puts "<><><>Kindly enter the player's name in the dialogs below!<><><>"
    puts "--------------------Player one's name---------------------------"
    @player_one = gets.strip
    puts "#{player_one} Please used the symbol [X] to play"
    puts "                                                                  "
    puts "--------------------Player two's name----------------------------"
    @player_two = gets.strip
    puts "#{player_two} Please used the symbol [O] to play"
  end
  #  Ask players to make moves

  def make_first_move
    puts "#{@player_one}, <>------ make your move from 1~9 --------<>"
    @user1_index = gets.strip.to_i
    char_X = 'X'
    @board[@user1_input] = char_X
    if valid_move?(@user1_index)
      return puts "\n Hi, your move is:  #{@user1_index}. \n\n X will be used in the position #{@user1_index}. "
    end
    make_first_input
    puts display_warning
    
  end

  def make_second_move
    puts "#{@player_two}, <>------ make your move from 1~9 --------<>"
    @user2_index = gets.chomp.to_i
    char_O= 'O'
    board[@user2_index] = char_O
    if move_valid?(@user2_index)
      return puts "\n Hi, your move is:  #{@user2_index}. \n\n O will be used in the position #{@user2_index}. "
    end
    make_second_move
    puts display_warning
    
  end

  def curr_player
    num_turns = turn_amount
    if num_turns % 2 == 0
      player = make_first_move
    else
      player = make_second_move
    end 
    return player
  end

  def move(index, curr_player = "X")
    @pos[index] == curr_player
    
  end

  def turn
     if valid_move?(user1_index)
      player_token == curr_player
      move(user1_index, player_token)
      display_board
     else
      turn
     end 
  end

 
  def draw
    puts 'game is a draw '
  end



  def display_warning
    "\e[31mSorry, invalid move! Please, try again. \e[0m"
  end

  def game_end
   
  end

  def switch_player
    if @curr_player == @player_one
      @player_two
    else
      @player_one
    end
  end

end
game1 = TicTacToe.new
game1.instructions
game1.user_info
game1.make_second_move

