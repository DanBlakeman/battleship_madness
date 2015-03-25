# a class
class Board
  attr_reader :grid

  def initialize
    @grid = { A: [yield, yield], B: [yield, yield] }
  end

  def mark_cell(column, row)
    grid[column][row].hit
  end

  def
end
