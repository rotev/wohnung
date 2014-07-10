require 'open-uri'
require 'nokogiri'

require_relative 'parsers/city_wohnen'
require_relative 'parsers/air_bnb'

class Parser
  def initialize(url)
    @url = url
  end

  def parse
    parser = get_parser(@url)

    result = if parser
              doc = Nokogiri::HTML(open(@url))
              parser.parse_doc(doc, @url)
            else
              {}
            end

    result.merge(url: @url)
  end

  private

  def get_parser(url)
    return CityWohnen if url.include? 'city-wohnen'
    return AirBnb if url.include? 'airbnb'
  end
end
