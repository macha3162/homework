# encoding: UTF-8
require 'json'
require 'open-uri' 

url = "http://weather.livedoor.com/forecast/webservice/json/v1?city=270000"
hash = JSON.load(open(url).read)
tennki = hash["forecasts"][0]["telop"]
puts "今日の大阪の天気は #{tennki}"