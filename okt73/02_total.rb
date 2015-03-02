# encoding:Shift_JIS
values =[4,9,5,1,3,8,6,2,7,10]
i = 0.0
max = 0
min = 11
std =0.0

values.each do |n|
	i += n.to_i #合計値
	
	if n > max
		max = n #最大
	end
	
	if n < min
		min = n #最小
	end
end

values.each do |n|
		std += (n-i/values.size)**2
end
std = Math.sqrt(std/values.size) #標準偏差

puts "合計値:#{i.to_i}","最大値:#{max}","最小値:#{min}","相加平均:#{i/values.size}","標準偏差:#{std}"