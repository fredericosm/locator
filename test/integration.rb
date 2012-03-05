require "test/unit"
require "little_world"

class LittleWorldTest < Test::Unit::TestCase
  def execute_test(input, ask, output)
    app = LittleWorld::App.new(input)
    actual = app.find_near(ask).strip
    assert_equal output.strip, actual 
  end

  def test_input_output
    input = "test/integration/fixture.txt"
    ask = "James"
    output = """
John 1 1
Lester 2 3
Roger 3 3
    """
    
    execute_test input, ask, output 
  end
end
