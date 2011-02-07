module Snoles  
  module Rule
    
    class Parse
      
      attr_accessor :header, :options
      
      def initialize(rule)
        @rule = rule
      end
      
      def header
        Rule::Header.new(rule_header)
      end
      
      def options
        Rule::Options.new(rule_options)
      end
      
      def valid
        return true if @rule
        false
      end
      
      private
      
        def rule_header
          raise('Error - Unable to parse rule header.') unless valid
          @rule.grep(/^(.+)\(/)
        end
        
        def rule_options
          raise('Error - Unable to parse rule options.') unless valid
          @rule[/\((.+)\)/m,1]
        end
      
    end
    
  end
end