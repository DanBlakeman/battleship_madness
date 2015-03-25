class Winner
  def winner?(ships)
    ships.all?(&:sunk?)
  end
end
