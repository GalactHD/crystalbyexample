---
title: Fibers
order: 21
nextExample:
  - channels
---

A Fiber is a lightweight unit of execution in Crystal, kind of like a thread, but cooperative and managed by Crystal scheduler. You can create fibers using `spawn`.

Fibers take turns running, so multiple tasks can make progress without stopping the whole program. The scheduler decides the order they run in, so it’s not guaranteed.

The `sum` method or any other method still runs normally inside a fiber. It doesn’t become asynchronous, but the fiber can give other fibers a chance to run at the same time.

`Fiber.yield` lets the current fiber pause its turn and let other fibers run. It doesn’t sleep for a fixed time and doesn’t promise exactly when the fiber will run again. It’s just a friendly way of telling the scheduler that someone else can go now.

```crystal
def saudation(name)
  return "Hello, #{name}!"
end

spawn do
  puts "Fiber 2!"
  sleep 2.seconds
end

spawn do
  puts "Fiber 3!"

  names = ["Lattner", "Ary", "Matz"]
  names.each do |name|
    puts saudation(name)
  end
end

puts "Fiber 1! (Main)"

Fiber.yield
```

```
$ crystal run fibers.cr

Fiber 1! (Main)
Fiber 2!
Fiber 3!
Hello, Lattner!
Hello, Ary!
Hello, Matz!
```
