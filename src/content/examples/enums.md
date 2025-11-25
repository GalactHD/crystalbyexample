---
title: Enums
order: 14
nextExample:
  - generics
---
import { Code } from 'astro-expressive-code/components'
import { loadCode } from '../../utils/load-code'

Enums are a group of named constants.

To access a constant from an enum, use the scope resolution operator `::`, and to access the value of that constant, use `.value`.

To change the type of the enum’s value, which is `Int32` by default, it is only necessary to annotate the type as you would for a variable, constant, or method.

Enums have values and are numbered starting from 0. The default value of a constant in the enum can be changed, and all subsequent constants in order will be updated accordingly.

Enums accept the use of both symbols and constants, but this only works in certain cases, such as in methods.

```crystal
enum Status
  Ok
  Warning
  Error
end

s = Status::Ok
puts s.value

case s
when Status::Ok
  puts "status ok"
when Status::Warning
  puts "warning"
when Status::Error
  puts "err!"
end

enum PlayerState : UInt32
  Alive = 1
  Dead
end

puts PlayerState::Dead.value

def check_state(state : PlayerState)
  puts "Player is: #{state}"
end

check_state PlayerState::Alive
check_state :dead
```

```
$ crystal run enums.cr

0
status ok
2
Player is: Alive
Player is: Dead
```