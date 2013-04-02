require 'mongo'

# 接続
puts "connect start"
connection = Mongo::Connection.new("127.0.0.1",27017)
db = connection.db("fluent")
coll = db.collection("trigger")
puts "connect end"


puts "get start"
coll.find().each{|value|
  p value['first_name']
  p value['last_name']
  file = value['file']
  p file.class
}
puts "get end"

