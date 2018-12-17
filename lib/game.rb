class Game
  attr_accessor :board, :player_1, :player_2, :cells
  WIN_COMBINATIONS =[[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]
  
  extend Players::Human
  include Players::Human
  
  def initialize(player_1 = "X", player_2 = "O", board = Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
    
  end
  
  def won?
    board.cells.each do |cell|
      WIN_COMBINATIONS.find do |pig|
        cell[pig.to_a] == pig.to_a
      end
    end
  end
end