require_relative '../lib/board.rb'
require_relative '../lib/play_game.rb'
require_relative '../lib/tictactoe.rb'

describe Play do
   let(:player) {Play.new}
   describe '#won?' do
      it 'compare two arrays and return true if there is a winning combination' do
         expect(player.won?([1, 2, 4, 3])).to eql(true)
      end
   end
end




