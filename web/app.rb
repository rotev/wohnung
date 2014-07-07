require "sinatra"
require "sinatra/reloader"

require_relative '../common/wohnung'
require_relative '../common/extractor'
require_relative '../common/persister'

set :port, 4568

configure do
  mongo_server = '127.0.0.1'
  mongo_database = "wohnung_db"

  MongoMapper.connection = Mongo::Connection.new(mongo_server)
  MongoMapper.database = mongo_database
end


get '/' do
  @wohnungs = Wohnung.all

  erb :'home', layout: :layout
end

post '/search' do
  wohnung = Extractor.extract(params[:url])
  Persister.persist(wohnung)
  wohnung
end