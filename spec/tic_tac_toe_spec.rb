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
