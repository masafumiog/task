# 【問題文】
# ・言語はRubyになります
# 【問題２：APIの利用】
# ・下記のダミーAPIのエンドポイントからデータを取得してください
# 　http://dummy.restapiexample.com/api/v1/employees
# 　※通信で使うライブラリに制限はありません
# ・取得結果から、"employee_salary"が"300,000"以上のデータのみ抽出してください
# ・上記で抽出した配列を、そのまま出力してください

require 'net/http' 
require 'uri'
require "json" 

res = Net::HTTP.get(URI.parse('http://zipcloud.ibsnet.co.jp/api/search?zipcode=6695221'))
