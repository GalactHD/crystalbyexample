---
title: Fibers
order: 19
nextExample:
  - channels
---
A Fiber is a lightweight unit of execution in Crystal, kind of like a thread, but cooperative and managed by Crystal scheduler. You can create fibers using `spawn`.

Fibers take turns running, so multiple tasks can make progress without stopping the whole program. The scheduler decides the order they run in, so it’s not guaranteed.

The `sum` method or any other method still runs normally inside a fiber. It doesn’t become asynchronous, but the fiber can give other fibers a chance to run at the same time.

`Fiber.yield` lets the current fiber pause its turn and let other fibers run. It doesn’t sleep for a fixed time and doesn’t promise exactly when the fiber will run again. It’s just a friendly way of telling the scheduler that someone else can go now.

```crystal
def sum(a, b)
  a + b
end

spawn do
  puts "Fiber 1!"
end

spawn do
  puts sum(5, 5)
end

spawn do
  5.times do |i|
    puts i
  end
end

puts "The main thread"

Fiber.yield
```

```
$ crystal run fibers.cr

The main thread
Fiber 1!
10
0
1
2
3
4
```