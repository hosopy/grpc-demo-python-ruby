require 'sinatra'
require 'grpc'

$:.unshift File.dirname(__FILE__)
require 'helloworld_services_pb'

set :bind, '0.0.0.0'

get '/' do
  stub = Helloworld::Greeter::Stub.new('back-end-server:50051', :this_channel_is_insecure)
  response = stub.say_hello(Helloworld::HelloRequest.new(name: 'Ruby client'))
  "#{response.message} (From python back-end-server via gRPC.)"
end
