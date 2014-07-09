require "sinatra"
require "sinatra/reloader"
require "mongo_mapper"
require "wohnung_mongodb"

set :port, 4568

configure do
  mongo_server = '127.0.0.1'
  mongo_database = "wohnung_db"

  MongoMapper.connection = Mongo::Connection.new(mongo_server)
  MongoMapper.database = mongo_database
end


get '/' do
  puts WohnungMongodb.constants.inspect

  @properties = Property.all

  erb :'home', layout: :layout
end

post '/search' do
  wohnung = Wohnung::Extractor.extract(params[:url])
  Wohnung::Persister.persist(wohnung)
  wohnung
end