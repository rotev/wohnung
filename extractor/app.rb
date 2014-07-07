require 'goliath'
require 'goliath/plugins/latency'

require_relative 'app/parser.rb'

class Extractor < Goliath::API
  use Goliath::Rack::Tracer             # log trace statistics
  use Goliath::Rack::DefaultMimeType    # cleanup accepted media types
  use Goliath::Rack::Render, 'json'     # auto-negotiate response format
  use Goliath::Rack::Params             # parse & merge query and body parameters
  use Goliath::Rack::Heartbeat          # respond to /status with 200, OK (monitoring, etc)

  #plugin Goliath::Plugin::Latency       # output reactor latency every second

  def process_request
    logger.info "Processing request"
    Parser.new(env.params['url']).parse
  end

  def response(env)
    [200, {}, process_request]
  end
end