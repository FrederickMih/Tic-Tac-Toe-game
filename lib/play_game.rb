class Play
  attr_accessor :pos

  def initialize
    @winning_combination = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [6, 4, 2]
    ]
  end

  def won?(move)
    (0..7).each do |i|
      next unless (@winning_combination[i] - move).empty?

      puts '------------------------------'
      puts '<<<<<-->>>> You Won! <<<<<-->>>>'
      return true
    end
    false
  end
end
