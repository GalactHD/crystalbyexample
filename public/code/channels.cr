ch = Channel(String).new

spawn do
  ch.send("Message 1")
end

message = ch.receive
puts "Normal channel received: #{message}"

buff_channel = Channel(String).new(2)

spawn do
  ["Hello", "World", "Fiber!"].each do |msg|
    puts "Sending: #{msg}"
    buff_channel.send(msg)
    puts "Sent: #{msg}"
  end
end

spawn do
  3.times do
    message = buff_channel.receive
    puts "Buffered channel received: #{message}"
  end
end

sleep 1.second
