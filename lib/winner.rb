class Winner
  def initialize(grid)
    @ships = grid
  end
  def winner?
    @ships.all?(&:sunk?)
  end
end
