require_relative '../lib/board'
require_relative '../lib/play_game'
require_relative '../lib/tictactoe'

describe Play do
  let(:player) { Play.new }
  let(:board) { Play.new }

  describe "#initialize" do
    it "Initialize the board and check the winnig combilation" do
      expect([
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
        [1, 4, 7],
        [2, 5, 8],
        [3, 6, 9],
        [1, 5, 9],
        [3, 5, 7]
      ]).to  eql([
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
        [1, 4, 7],
        [2, 5, 8],
        [3, 6, 9],
        [1, 5, 9],
        [3, 5, 7]
      ])
    end 
  end
  
  describe '#won?' do
    it 'Display winning player after comparing' do
      expect(player.won?([2, 3, 8, 5])).to eql(true)
    end
    it 'Return False if not a winning move' do
      expect(player.won?([2, 3])).not_to eql(true)
    end
  end
end