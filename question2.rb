# 【抽出する条件】
# completed が false の物を抽出して出力

require 'net/http' 
require 'uri'
require "json" 

url = URI.parse("https://jsonplaceholder.typicode.com/todos")

https = Net::HTTP.new(url.host, url.port)

https.use_ssl = true

req = Net::HTTP::Get.new(url.path)

res = https.request(req)

hash = JSON.parse(res.body)

pue = hash.select{|v| v["completed"] == false }

puts pue

