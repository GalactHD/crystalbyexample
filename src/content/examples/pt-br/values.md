---
title: Valores
order: 2
nextExample:
  - variables
---

Valores são um importante conceito na programação, e em Crystal isso não é diferente.

Os principais valores em Crystal são strings, chars, integers, floats e booleans. Há outros valores, mas, são muito mais específicos, os valores principais são chamados de tipos primitivos.

```crystal
puts "Meu texto"
puts 'ç'
puts true && false
puts 77 + 33
puts 3.145 * 2
```

```
$ crystal run valores.cr

Meu texto
ç
false
110
6.29
```
