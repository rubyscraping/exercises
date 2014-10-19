require 'uri'
require 'net/http'

class Scraper

  def self.ip_address
    url = URI.parse('http://ifconfig.me/ip')
    Net::HTTP.get(url).to_s
  end
end
