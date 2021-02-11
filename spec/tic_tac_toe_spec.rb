require_relative '../lib/board.rb'
require_relative '../lib/play_game.rb'
require_relative '../lib/tictactoe.rb'

describe Play do
   let(:player) {Play.new}
   describe '#won?' do
      it 'compare two arrays and display you won if there is a winning combination' do
         expect(player.won?([1, 2, 8, 3])).to eql(true)
      end
       it 'compares two arrays and return false if there is not a winning com' do
         expect(player.won?([1, 2])).not_to eql(true)
      end
   end
end




