require 'socket'

ARGV.empty? ? host = 'localhost' : host = ARGV[0].dup
socket = TCPSocket.new(host, 2345)
  loop do
    puts socket.gets
    puts "Wow what a rude server...my name is"
    name = gets.chomp
    socket.puts name
    puts socket.gets
    exit if name == 'exit'
  end

socket.close
