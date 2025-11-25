---
title: Fibers
order: 18
nextExample:
  - channels
---
import { Code } from 'astro-expressive-code/components'
import { loadCode } from '../../utils/load-code'

A Fiber is a lightweight unit of execution managed by Crystal, similar to a thread, but cooperative and controlled by the language’s own scheduler. Fibers can be created using `spawn`.

Fibers run cooperatively, allowing multiple tasks to progress without blocking the main program. The execution order between fibers is not guaranteed; the scheduler decides when each fiber runs.

The `sum` method remains synchronous with the standard execution, but when called inside a fiber, its execution happens within the fiber and is managed by the scheduler, allowing other fibers to run concurrently.

`Fiber.yield` provides a cooperative pause in the current fiber, allowing other fibers to run, but it does not directly control how long each fiber will execute.

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