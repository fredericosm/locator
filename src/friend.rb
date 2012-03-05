class Friend
  attr_reader :name, :coordinates
  def initialize(name, x, y)
    @name = name
    @coordinates = Coordinates.new(x, y)
  end

  def to_s
    "#{name} #{coordinates.x} #{coordinates.y}"
  end
end
