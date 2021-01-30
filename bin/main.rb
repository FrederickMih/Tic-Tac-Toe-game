#!/usr/bin/env ruby

class TicTacToe
attr_accessor :board, :turn, :player_one, :player_two

def initialize(board = nil, turn)
   @board = board || %w(-)*9
   @turn = turn
   @played = []
end


# Get users names
def user_info
   puts "Welcome to your favourite game Tic_Tac_Toe"
   puts "Kindly enter the player's name in the dialogs below please!"
   puts "Player one's name"
   @player_one = gets.chomp
   puts "Player two's name"
   @player_two = gets.chomp
end

def instructions
    puts "<------> WELCOME TO TIC-TAC-TOE GAME <---------->"
    puts '            How this game works?'
    puts '      You play by putting a mark from 0~8'
    puts '               0 | 1 | 2'
    puts '              --- --- ---'
    puts '               3 | 4 | 5'
    puts '              --- --- ---'
    puts '               6 | 7 | 8'
    puts 
  end

def make_first_move
   puts "Please make your move \n#{@player_one}"
   @user_one_move = gets.chomp.to_i
end

end
