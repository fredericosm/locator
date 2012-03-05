require 'src/coordinates'
require 'src/friend'
require 'src/friend/parsed_data'

module LittleWorld
  class App
    def initialize(file_name)
      input = File.read(file_name)
      @friends = Friend::ParsedData.new(input).collection
    end

    def find_near(name)
      target = @friends.first  {|t| t.name == name }     
      others = @friends.reject {|t| t.name == name } 
      sorted = others.sort_by  {|f| target.coordinates.distance_from(f.coordinates) }
      nearest = sorted[0..2]
      nearest.join("\n")
    end
  end
end
