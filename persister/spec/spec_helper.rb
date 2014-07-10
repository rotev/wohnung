require 'rubygems'
require 'bundler'
require 'rack/test'

require_relative '../app.rb'


module RSpecForSinatra
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

RSpec.configure do |config| 
  config.include RSpecForSinatra
end