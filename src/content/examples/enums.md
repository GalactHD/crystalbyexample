---
title: Enums
order: 17
nextExample:
  - generics
---

Enums are a group of named constants.

To access a constant from an enum, use the scope resolution operator `::`, and to access the value of that constant, use `.value`.

To change the type of the enum’s value, which is `Int32` by default, it is only necessary to annotate the type as you would for a variable, constant, or method.

Enums have values and are numbered starting from 0. The default value of a constant in the enum can be changed, and all subsequent constants in order will be updated accordingly.

Enums accept the use of both symbols and constants, but this only works in certain cases, such as in methods.

Enums can have methods, because enums are just a class (like everthing on Crystal)

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

enum Why
  Has = 1
  None
end

puts Why::None.value

def why_none(opt : Why)
  case opt
  when Why::Has then puts "why: has"
  when Why::None then puts "why: none"
  end
end

why_none :Has

enum PlayerState
  Alive
  Dead

  def check_state()
    case self
    when .alive? then puts "Player is alive!"
    when .dead? then puts "Player is not alive!"
    end
  end
end

PlayerState::Alive.check_state()
```

```
$ crystal run enums.cr

0
status ok
2
why: has
Player is alive!
```
