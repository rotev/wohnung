require 'sinatra'
require "sinatra/reloader"
require 'wohnung'
require 'wohnung_mongodb'

configure do
  mongo_server = '127.0.0.1'
  mongo_database = "wohnung_db"

  MongoMapper.connection = Mongo::Connection.new(mongo_server)
  MongoMapper.database = mongo_database
end

post '/wohnungs' do
  WohnungMongodb::Property.create(params) 
end