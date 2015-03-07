# encoding:utf-8
Dir.chdir("..")
str = File.open("resource/07_index.html").read

(str).scan(/<a href=\"(http.*?)\".*>(.*?)<\/a>/) do |matched|
	puts matched
end
