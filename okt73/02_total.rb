# encoding:Shift_JIS
values =[4,9,5,1,3,8,6,2,7,10]
i = 0.0
max = 0
min = 11
std =0.0

values.each do |n|
	i += n.to_i #���v�l
	
	if n > max
		max = n #�ő�
	end
	
	if n < min
		min = n #�ŏ�
	end
end

values.each do |n|
		std += (n-i/values.size)**2
end
std = Math.sqrt(std/values.size) #�W���΍�

puts "���v�l:#{i.to_i}","�ő�l:#{max}","�ŏ��l:#{min}","��������:#{i/values.size}","�W���΍�:#{std}"