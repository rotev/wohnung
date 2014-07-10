require "uri"
require "json"

module Utils
  def self.get(url, params)
    uri = URI.parse(url)
    uri.query = URI.encode_www_form(params)
    JSON.parse(uri.open.read)
  end

  def self.post(url, params)
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new("/wohnungs")
    request.add_field('Content-Type', 'application/json')
    request.body = params
    response = JSON.parse(http.request(request))
  end
end