require_relative '../lib/board.rb'
require_relative '../lib/play_game.rb'
require_relative '../lib/tictactoe.rb'

describe Play do
   let(:player) {Play.new}
   describe '#won?' do
      it 'compare two arrays and display you won if there is a winning combination' do
         expect(player.won?([2, 3, 8, 5])).to eql(true)
      end
       it 'compares two arrays and return false if there is not a winning com' do
         expect(player.won?([2, 3])).not_to eql(true)
      end
   end
end

describe Board do
   let(:board) {Board.new}
   describe '#switch_turn' do
      it 'returns the user symbol' do
         expect(board.switch_turn(3, 2)).to eql('X')
      end

      it 'returns the user symbol' do
         expect(board.switch_turn(4, 3)).to eql('O')
      end
        it 'does not returns the user symbol' do
         expect(board.switch_turn(4, 3)).not_to eql('X')
      end
   end
end


