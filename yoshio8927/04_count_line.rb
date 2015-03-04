
file = File.open(ARGV[0])
i = 0

file.each_line do |line|
  next if /^#/ =~ line
  i = i + 1

end

 puts i
file.close