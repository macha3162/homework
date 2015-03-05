# encoding: UTF-8
text = ARGV[0].split("")	#入力文字列を分割
n = text.size - 1

def kigou (k)	#記号の置き換え
	case k
	when "("
		k = ")"
	when "<"
		k = ">"
	when "{"
		k = "}"
	when "["
		k = "]"
	else
		k
	end
end

(text.size/2).times do |i|
	text[i], text[n-i]= kigou(text[i]), kigou(text[n-i])
	if text[i]==text[n-i]
		if i==(text.size/2 - 1)
			puts "回文です"
		end
	else
		puts "回文ではありません"
		break
	end
end
