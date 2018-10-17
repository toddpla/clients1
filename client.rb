require 'socket'

  socket = TCPSocket.new('localhost', 2345)


puts socket.gets
puts "Wow what a rude server... I'm going to say Sarah"
  loop do
    name = gets.chomp
    socket.puts name
    puts socket.gets
    exit if name == 'exit'
  end

socket.close
