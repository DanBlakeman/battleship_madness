class Board
  attr_reader :grid, :ships_on_board

  def initialize
    @grid = { A: ['~', '~'], B: ['~', '~'] }
    @ships_on_board = []
  end

  def mark_cell(column, row)
    if grid[column][row].nil?
      grid[column][row] = 'O'
    else
      grid[column][row].hit
      grid[column][row] = '*'
    end
  end

  def place_ship(column, row, ship)
    grid[column][row] = ship
    @ships_on_board << ship
  end
end
