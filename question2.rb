# 【問題文】
# ・言語はRubyになります
# 【問題２：APIの利用】

# 【抽出する条件】
# completed が false の物を抽出して出力
# ＝＝＝

# あと、HashとArrayの違いを明確にすることをお勧めします。
# 回答お待ちしてますね！

require 'net/http' 
require 'uri'
require "json" 

url = URI.parse("https://jsonplaceholder.typicode.com/todos")

https = Net::HTTP.new(url.host, url.port)

https.use_ssl = true

req = Net::HTTP::Get.new(url.path)

res = https.request(req)

hash = JSON.parse(res.body)

puts hash.select{|completed, value| value == false }
