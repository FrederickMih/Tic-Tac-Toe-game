#!/usr/bin/env ruby

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
    puts 'Welcome to your favourite game Tic_Tac_Toe'
    puts "Kindly enter the player's name in the dialogs below!"
    puts "Player one's name"
    @player_one = gets.strip
    puts "#{player_one} Please used the symbol [X] to play"
    puts "Player two's name"
    @player_two = gets.strip
    puts "#{player_two} Please used the symbol [O] to play"
  end
  #  Ask players to make moves

  def make_first_move
    puts "#{@player_one}, make your move from 1~8"
    @user1_move = gets.chomp.to_i
    move = 'X'
    @board[@user1_move] = move
    if move_valid?(@user1_move)
      return puts "you made your move #{@user1_move}. \n\n X will be place in index #{@user1_move}. "
    end

    puts display_warning
    make_first_move
  end

  def make_second_move
    puts "#{@player_two}, Please make your move from 1~8"
    @user2_move = gets.chomp.to_i
    move = 'O'
    board[@user2_move] = move
    if move_valid?(@user2_move)
      return puts "you made your move #{@user2_move}. \n\n O will be place in index
       #{@user2_move}. "
    end
    puts display_warning
    make_second_move
  end

  # if if there's no winner, then game draw
  def draw
    puts 'game is a draw '
  end

  def move_valid?(move)
    @cells[move - 1] == move
  end

  def display_warning
    "\e[31mSorry, invalid move! Please, try again. \e[0m"
  end

  def game_end
    puts "#{player_one} won!"
  end

  def play
    instructions
    user_info
    # display_board
    move = 1
    while move < 9
      display_board
      if move.odd?
        make_first_move
      # display_board
      # @played.push(@user1_move)

      else
        # change_player
        make_second_move
        # display_board
        # @played.push(@user2_move)
      end

      move += 1
      puts "move is: #{move}"
    end
    # puts "#{player_one} Won!"
  end

  def switch_player
    if @curr_player == @player_one
      @player_two
    else
      @player_one
    end
  end

  def display_board
    # puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    # puts '--- --- ---'
    # puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    # puts '--- --- ---'
    # puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    puts ' 1 | 2 | 3 '
    puts '--------- '
    puts ' 4 | 5 | 6 '
    puts '--------- '
    puts ' 7 | 8 | 9 '
  end
end
game1 = TicTacToe.new
game1.play
game1.display_board
game1.game_end
game1.draw
