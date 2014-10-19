require 'spec_helper'

describe Scraper do
  it 'request IP address' do
    VCR.use_cassette('ifconfig.me/ip') do
      expect(Scraper.ip_address).to eq("86.168.149.63\n")
    end
  end
end
