require "net/http"
require "uri"
require "json"

uri = URI.parse("http://localhost:8888/debug.debug")
Net::HTTP.start(uri.host, uri.port){|http|
  header = {
    "user-agent" => "Ruby/#{RUBY_VERSION} MyHttpClient"
  }
  #ボディ部
  param = JSON.generate({"test_1" => {"test_1_1" => "1" },"test_2" => "aaaaa"})
  body = "json=" << param
  #送信
  response = http.post(uri.path, body, header)
  p response
}