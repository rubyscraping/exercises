require 'uri'
require 'net/http'

url = URI.parse('http://ifconfig.me/ip')
response = Net::HTTP.get(url)

puts response
