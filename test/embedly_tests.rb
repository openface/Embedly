require 'lib/embedly.rb'
require 'pp'

o = Embedly.new(:url=>'http://www.youtube.com/watch?v=60og9gwKh1o')
pp(o.gets)

o = Embedly.new(:url=>'http://www.youtube.com/watch?v=60og9gwKh1o',:format=>'xml')
pp(o.gets)
