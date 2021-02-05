#!/usr/bin/env ruby

require_relative '../lib/play_game'
require_relative '../lib/board'

class TicTacToe < Board
  attr_accessor :player_one, :player_two, :pos

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

  #  Ask players to make moves

  def make_first_move
    puts "#{@player_one}, <>------ make your move from 1~9 --------<>"
    one_input = gets.chomp
    @user1_index = one_input.to_i
    if one_input !~ /\D/
      valid_move(@user1_index, @one_acc)
    else
      make_first_move
    end
  end

  def make_second_move
    puts "#{@player_two}, <>------ make your move from 1~9 --------<>"
    two_input = gets.chomp
    @user2_index = two_input.to_i
    if two_input !~ /\D/
      valid_move(@user2_index, @two_acc)
    else
      make_second_move
    end
  end

  def valid_move(user_move, user_acc)
    compare = TicTacToe.new

    if user_move.between?(1, 9) && @num_check.none?(user_move)
      switch_turn(user_move)
      puts '                              '
      puts display_board
      puts '                              '
      @num_check.push(user_move)
      user_acc.push(user_move)
      compare.won?(user_acc)
    else
      puts '                              '
      puts 'Sorry, invalid move! Please, try again.'
      puts '                              '
      make_first_move if user_move == @user1_index
      make_second_move if user_move == @user2_index
    end
  end

  def over
    puts 'Do you want to play again?: yes or no'
    gets.chomp
  end

  def draw
    puts "It's a draw!!"
  end
end

loop do
  play = TicTacToe.new
  win = false
  moves = 0
  play.instructions
  play.user_info
  loop do
    if play.make_first_move == true
      win = true
      break
    end
    moves += 1
    break if moves == 9

    if play.make_second_move == true
      win = true
      break
    end
    moves += 1
    break if moves == 9
  end
  play.draw if moves == 9
  break if play.over == 'no'
end
