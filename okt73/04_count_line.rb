# encoding: UTF-8
file = File.open(ARGV[0])
count = 0
file.each_line do |line|
	next if /^\s*$/ =~ line　#空白行除く
	count += 1
end
puts "#{count}行です"