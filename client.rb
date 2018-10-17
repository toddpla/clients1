require 'socket'
  server_address = ARGV[0]
  socket = TCPSocket.new(server_address, 2345)
  puts socket



puts socket.gets
puts "Wow what a rude server... I'm going to say Sarah"
  loop do
    puts server_address
    name = gets.chomp
    socket.puts name
    puts socket.gets
    exit if name == 'exit'
  end

socket.close
