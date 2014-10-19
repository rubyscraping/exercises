require 'rspec'
require 'vcr'

require_relative '../scraper'

VCR.configure do |config|
  config.cassette_library_dir = 'spec/fixtures/cassettes'
  config.hook_into :webmock
end
