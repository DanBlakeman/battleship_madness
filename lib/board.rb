# a class
class Board
  attr_reader :grid, :ships_on_board

  def initialize
    @grid = { A: [yield, yield], B: [yield, yield] }
    @ships_on_board = []
  end

  def mark_cell(column, row)
    grid[column][row].hit
  end

  def place_ship(column, row, ship)
    grid[column][row].place(ship)
    @ships_on_board << ship
  end
end
