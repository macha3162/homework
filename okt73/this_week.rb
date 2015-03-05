# encoding: utf-8
require "date"

d = Date.today
begin_w = Date.new(d.year, d.month, d.day) - d.wday	#週のあたま

7.times do |i|
	puts (begin_w + i).strftime("%m/%d (%a)")
end
