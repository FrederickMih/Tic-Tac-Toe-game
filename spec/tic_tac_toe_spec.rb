require_relative '../lib/board'
require_relative '../lib/play_game'
require_relative '../lib/tictactoe'

describe Play do
  let(:player) { Play.new }
  describe '#won?' do
    it 'Display winning player after comparing' do
      expect(player.won?([2, 3, 8, 5])).to eql(true)
    end
    it 'Return False if not a winning move' do
      expect(player.won?([2, 3])).not_to eql(true)
    end
  end
end

describe Board do
  let(:board) { Board.new }
  describe '#switch_turn' do
    it 'Returns the player symbol' do
      expect(board.switch_turn(3, 2)).to eql('X')
    end

    it 'Returns the player symbol' do
      expect(board.switch_turn(4, 3)).to eql('O')
    end
    it 'Does not returns the player symbol' do
      expect(board.switch_turn(4, 3)).not_to eql('X')
    end
  end
end

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
end
