values =[4,9,5,1,3,8,6,2,7,10]
i = 0.0
std =0.0

values.each do |n|
	i += n #���v�l
end

values.each do |n|
		std += (n-i/values.size)**2
end
std = Math.sqrt(std/values.size) #�W���΍�

puts "���v�l:#{i.to_i}","�ő�l:#{values.max}","�ŏ��l:#{values.min}","��������:#{i/values.size}","�W���΍�:#{std}"