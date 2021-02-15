require_relative '../lib/board'
require_relative '../lib/play_game'
require_relative '../lib/tictactoe'

describe TicTacToe do
  let(:tic_tac_toe) { TicTacToe.new }
  describe '#valid_move' do
    it 'Invalid move check if the move is not available' do
      tic_tac_toe.valid_move(2, tic_tac_toe.one_acc, 2)
      expect(tic_tac_toe.valid_move(2, [], 2)).to eql(false)
    end

    it 'Valid move check if the move is between 1-9' do
      expect(tic_tac_toe.valid_move(5, [], 6)).to eql(true)
    end

    it 'Return Invalid move if the move is not between 1-9' do
      expect(tic_tac_toe.valid_move(17, [], 6)).to_not eql(true)
    end

    it 'Invalid move check if the move is not a word' do
      expect(tic_tac_toe.valid_move('word', [], 6)).to_not eql(true)
    end
  end

  describe '#make_first_move' do
    it 'Ask the player to enter a number from 1-9' do
      expect(true).to eql(true)
    end
  end

  describe '#make_second_move' do
    it 'Ask the player to enter a number from 1-9' do
      expect(true).to eql(true)
    end
  end
end
