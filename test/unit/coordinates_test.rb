require "test/unit"
require "src/models/coordinates"

class CoordinatesTest < Test::Unit::TestCase
  def test_x_y
    coordinates = Coordinates.new(1, 2)
    assert_equal coordinates.x, 1
    assert_equal coordinates.y, 2
  end

  def test_distance
    a = Coordinates.new(1, 1)
    b = Coordinates.new(1, 2)
    assert_equal a.distance_from(b), 1
  end
end
