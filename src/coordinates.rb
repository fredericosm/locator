class Coordinates
  attr_reader :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance_from(coordinates)
    Math.hypot(@x - coordinates.x, @y - coordinates.y)
  end
end
