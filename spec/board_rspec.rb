require_relative '../lib/board'

describe Board do
    let(:board) { Board.new }

    describe '#display_board' do
      it 'Display the Board' do
        expect(board).to  eql(board)
      end
    end
    
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