require 'sinatra'

require_relative '../common/wohnung'

post '/wohnungs' do
  Wohnung.create(params) 
end