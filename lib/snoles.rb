require 'snoles/rule'
require 'snoles/version'

module Snoles
  
  def self.load(rule)
    Rule::Examine.new(rule)
  end
  
end