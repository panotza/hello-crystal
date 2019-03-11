# A very basic HTTP server
require "http/server"

server = HTTP::Server.new do |context|
  context.response.content_type = "text/plain"
  context.response.print "Hello World!"
end

puts "Listening on http://0.0.0.0:8080"
server.bind_tcp "0.0.0.0", 8080
server.listen
