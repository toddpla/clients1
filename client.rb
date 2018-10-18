require 'socket'

ARGV.empty? ? host = 'localhost' : host = ARGV[0].dup
# host = '192.168.48.146'
socket = TCPSocket.new(host, 2345)
puts socket.gets
  loop do

    puts "Wow what a rude server...my name is"
    name = gets.chomp
    socket.puts name
    puts socket.gets
    exit if name == 'exit'
  end

socket.close
