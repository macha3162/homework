# encoding:utf-8

Dir.chdir("..")
str = File.open("resource/07_index.html").read

(str).scan(/<a\shref=\"(http.*)\"\s?.*?>(.*)<\/a>/) do |matched|
	puts matched
end