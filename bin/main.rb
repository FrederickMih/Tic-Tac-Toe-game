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


end
