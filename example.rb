$:.unshift File.dirname(__FILE__) + "/lib"
require 'snoles'
require 'pp'

snort_rule = 'alert tcp $HOME_NET 22 -> $EXTERNAL_NET any (msg:"ET DROP Known Bot C&C Server Traffic UDP (group 4)"; reference:url,www.shadowserver.org; reference:url,abuse.ch; threshold: type limit, track by_src, seconds 3600, count 1; classtype:trojan-activity; sid:2404007; rev:2193;)'

rule = Snoles.load(snort_rule)

puts rule

pp rule.header

pp rule.options