require 'open-uri'
require_relative 'utils'

module Wohnung
  class Persister

    PERSISTER_URL = "http://localhost:4567/"

    def self.persist(data)
      Utils.post(PERSISTER_URL, data)
    end
  end
end