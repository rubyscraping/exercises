require 'uri'
require 'net/http'

url = URI.parse('http://ifconfig.me/ua')
http = Net::HTTP.start(url.host, url.port)
request = Net::HTTP::Get.new(url.path, {'User-Agent' => 'ExampleBot/1.0'})
response = http.request(request)

puts response.body
