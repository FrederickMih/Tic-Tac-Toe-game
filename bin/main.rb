#!/usr/bin/env ruby

class TicTacToe
  attr_accessor :board, :turn, :player_one, :player_two

  def initialize(board, turn)
    @board = board || %w[-] * 9
    @turn = turn
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
    puts "Kindly enter the player's name in the dialogs below please!"
    puts "Player one's name"
    @player_one = gets.chomp
    puts "#{player_one} Please used the symbol [X] to play"
    puts "Player two's name"
    @player_two = gets.chomp
    puts "#{player_two} Please used the symbol [O] to play"
  end
      #  Ask players to make moves

  def make_first_move
    puts "Please make your move #{@player_one} from 1~8"
    @user_one_move = gets.chomp.to_i
    if move_valid?(@user_one_move)
       puts "#{user_one_move} will be place in position #{user_one_move}."
    else
      puts "Incorrect move. Try again!"
    end
    make_first_move
  end

  def make_second_move
    puts "Please make your move #{@player_two} from 1~8"
    @user_two_move = gets.chomp.to_i
    if move_valid?(@user_two_move)
       puts "#{user_two_move} will be place in position #{user_two_move}."
    else
      puts "Incorrect move. Try again!"
    end
    make_second_move
  end
  def play
   instructions
   user_info
   move = 1
     while move < 9
      if move.odd?
         make_first_move
         # display_board
         @played.push(@user_one_move)
        else
         # change_player
         make_second_move
         # display_board
         @played.push(user_two_move)
     end
     move += 1
     puts "move is: #{move}"
  end
  puts "#{player_one} Won!"
end
















end
