require 'open-uri'
require_relative 'utils'

module Wohnung
  class Extractor

    EXTRACTOR_URL = "http://localhost:9000/"

    def self.extract(url)
      Utils.get(EXTRACTOR_URL, { url: url})
    end
  end
end