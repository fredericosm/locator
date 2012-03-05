class Friend
  class ParsedData
    attr_reader :collection

    def initialize(text_input) 
      @collection = []
      parse! text_input
    end

    protected
    def parse!(text)
      text.strip.split(/\n/).each do |entry|
        args = entry.strip.split(" ")
        @collection << Friend.new(args.first, args[1].to_i, args[2].to_i)
      end
    end
  end
end
