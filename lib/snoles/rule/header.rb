module Snoles
  module Rule
    
    class Header
      
      attr_accessor :header
      
      def initialize(header)
        @header = header
      end
      
      def to_s
        @header
      end
      
    end
    
  end
end