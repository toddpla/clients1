require 'socket'

server = TCPServer.new(2345)

loop do
  socket = server.accept
  socket.puts "HELLO CLIENT WHAT IS YOUR NAME?"
  loop do
    name = socket.gets.chomp
    break if name == 'exit'
    socket.puts "THAT'S A LOVELY NAME #{name}"
  end
  socket.close
end
