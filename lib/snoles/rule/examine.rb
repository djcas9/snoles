module Snoles  
  module Rule
    
    class Examine
      
      attr_accessor :header, :options
      
      def initialize(rule)
        @rule = rule
      end
      
      def header
        parsed_header = Rule::Parse::Header.new
        Rule::Options.new(parsed_header.parse(rule_header))
      end
      
      def options
        parsed_options = Rule::Parse::Options.new
        Rule::Options.new(parsed_options.parse(rule_options))
      end
      
      def valid
        return true if @rule
        false
      end
      
      private
      
        def rule_header
          raise('Error - Unable to parse rule header.') unless valid
          @rule.match(/[^\(]+/)
        end
        
        def rule_options
          raise('Error - Unable to parse rule options.') unless valid
          @rule[/\((.+)\)/m,1]
        end
      
    end
    
  end
end