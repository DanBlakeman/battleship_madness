# a class
class Board
  attr_reader :grid

  def initialize
    @grid = { A: [yield, yield], B: [yield, yield] }
  end

  def mark_cell(column, row)
    grid[column][row].hit
  end

  def place_ship(column, row, ship)
    grid[column][row].place(ship)
  end

  def ships_on_board
    ships = []
    grid.each do |_key, column|
      column.each { |cell| ships <<  cell.content unless cell.content.nil? }
    end
    ships
  end
end
