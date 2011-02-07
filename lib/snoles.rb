require 'snoles/rule'
require 'snoles/version'

module Snoles
  
  def self.load(rule)
    Rule::Parse.new(rule)
  end
  
end