require "test/unit"
require "src/models/friend/parsed_data"

class Friend
  attr_accessor :str, :int1, :int2
  def initialize(str, int1, int2)
    @str = str
    @int1 = int1
    @int2 = int2
  end

  def ==(obj)
    obj.str == @str and obj.int1 == @int1 and obj.int2 == @int2
  end

end

class FriendParsedDataTest < Test::Unit::TestCase
  def test_parse_single_line
    subject = Friend::ParsedData.new("John 1 1")
    assert_equal subject.collection.size, 1
    assert_friend subject.collection.first, :with_params => ["John", 1, 1]
  end

  def test_parse_multiple_lines
    subject = Friend::ParsedData.new """
      John 1 1
      Freddy 2 2
    """
    assert_equal subject.collection.size, 2
    assert_friend subject.collection.first, :with_params => ["John", 1, 1]
    assert_friend subject.collection[1], :with_params => ["Freddy", 2, 2]
  end

  def assert_friend(obj, opt)
    p = opt[:with_params]
    assert_equal obj, Friend.new(p[0], p[1], p[2])
  end
end
