module Snoles  
  module Rule
    
    class Options
      
      attr_accessor :options
      
      def initialize(options)
        @options = options
      end
      
      def to_s
        @options
      end
      
    end
    
  end
end