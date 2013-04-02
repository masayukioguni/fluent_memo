
require 'httpclient'
require "json"

boundary = "123456"
c = HTTPClient.new
open("./hoge.txt","w"){|f| f.puts "httptest" }
open("./hoge.txt") do |file|
  postdata = "json=" << JSON.generate({"first_name" => "michael", "last_name" => "jackson", "file" => file})
  puts c.post_content("http://127.0.0.1:8888/debug.debug", postdata)
end
# >> httptest