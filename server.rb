require 'socket'

server = TCPServer.new(2345)

loop do
  socket = server.accept
  loop do
    socket.puts "HELLO CLIENT WHAT IS YOUR NAME?"
    name = socket.gets.chomp
    break if name == 'exit'
    socket.puts "THAT'S A LOVELY NAME #{name}"
  end
  socket.close
end
