class Ship
  attr_reader :size, :hits

  def initialize(size = 1)
    @size = size
    @hits = 0
  end

  def hit
    @hits += 1
  end

  def sunk?
    hits >= size
  end

  def to_s
    '~'
  end
end
