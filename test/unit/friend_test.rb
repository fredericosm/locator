require 'test/unit'
require 'src/models/friend'

class Coordinates
  attr_reader :int1, :int2

  def initialize(int1, int2)
    @int1 = int1
    @int2 = int2
  end

  def ==(obj)
    obj.int1 == @int1 and obj.int2 == @int2
  end
end

class FriendTest < Test::Unit::TestCase
  def test_name
    friend = Friend.new("John", 1, 1)
    assert_equal friend.name, "John"
  end

  def test_coordinates
    friend = Friend.new("John", 1, 1)
    assert_equal friend.coordinates, Coordinates.new(1, 1)
  end
end
