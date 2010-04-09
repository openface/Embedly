require 'lib/embedly.rb'
require 'pp'

o = Embedly.new(:url=>'http://imgur.com/tools/')
pp(o.gets)
