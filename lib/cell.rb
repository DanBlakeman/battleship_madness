class Cell
  attr_accessor :content
  attr_reader :hit
  alias_method :place, :content=
  alias_method :hit?, :hit
  def initialize
    @content = nil
    @hit = false
  end

  def hit
    content.hit unless content.nil?
    @hit = true
  end
end
