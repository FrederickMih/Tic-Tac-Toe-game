require_relative '../lib/board'
require_relative '../lib/play_game'
require_relative '../lib/tictactoe'

describe Play do
  let(:player) { Play.new }
  let(:board) { Play.new }
  
  describe '#won?' do
    it 'Display winning player after comparing' do
      expect(player.won?([2, 3, 8, 5])).to eql(true)
    end
    it 'Return False if not a winning move' do
      expect(player.won?([2, 3])).not_to eql(true)
    end
  end
end