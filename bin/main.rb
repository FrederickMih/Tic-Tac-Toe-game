#!/usr/bin/env ruby

require_relative '../lib/play_game'
require_relative '../lib/board'
require_relative '../lib/tictactoe'

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
  break unless play.over == 'no'
end
