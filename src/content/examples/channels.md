---
title: Channels
order: 19
isLast: true
nextExample:
  - nothing
---

Channels in Crystal provide a safe and convenient way to send data between fibers without worrying about shared resources or race conditions.

Channels are typed and implemented as a class, so you create them by specifying the type of data they will carry. Channels are generic, meaning they can send any type of data.

For sending data, use `send`, and for receiving data, use `receive` on the Channel instance.

Unbuffered channels block the sending fiber until another fiber receives the message, while buffered channels allow multiple messages to be stored without immediately blocking, up to the buffer’s capacity.

```crystal
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
```

```
$ crystal run channels.cr

Normal channel received: Message 1
Sending: Hello
Sent: Hello
Sending: World
Sent: World
Sending: Fiber!
Buffered channel received: Hello
Buffered channel received: World
Buffered channel received: Fiber!
Sent: Fiber!
```
