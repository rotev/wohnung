require 'mongo_mapper'

module WohnungMongodb
  BLAH = "foo"
  
  class Property
    include MongoMapper::Document

    key :provier,     String
    key :extid,       String
    key :title,       String
    key :images,      Array
    key :property,    String
    key :size,        String
    key :price,       String

  end
end