---
title: Methods
order: 10
nextExample:
  - procs
---
import { Code } from 'astro-expressive-code/components'
import { loadCode } from '../../utils/load-code'

Methods (or functions) are a way to reuse code, avoiding the repetition of logic and consequently making programming simpler.

In Crystal, methods are declared with `def` and ended with `end`, and parentheses are optional.

Methods need to be called to work. In Crystal, you can simply write the method name without the need for parentheses.

Crystal allows method overriding—you can create multiple methods with the same name, but depending on the order of the call, the effects may vary.

Arguments or parameters are a way to pass data to a function, and in Crystal, methods may or may not have parameters.

Methods can return values. In Crystal, this is done using `return`, or you can place the value as the last expression in the method, which has the same effect.


```crystal
def hello
  puts "Hello, World!"
end

hello

def hello(name)
  puts "Hello, #{name}"
  return name
end

saudation = hello("Ricardo")
puts saudation

def is_even?(num)
  if num % 2 == 0
    puts "Is even!"
  else
    puts "Is odd!"
  end

  num
end

my_number_is_even = is_even?(4)
puts my_number_is_even
```

```
$ crystal run methods.cr

Hello, World!
Hello, Ricardo
Ricardo
Is even!
4
```