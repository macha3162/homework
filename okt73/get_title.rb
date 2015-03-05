# encoding: utf-8
require 'open-uri'
require 'openssl'

url = ARGV[0].to_s

open(url, :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE) do |io|
	str = io.read
	str =~ /<title>(.+)<\/title>/im
	puts $1.strip
end
