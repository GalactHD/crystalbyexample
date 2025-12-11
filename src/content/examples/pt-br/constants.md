---
title: Constantes
order: 4
nextExample:
  - if-else
---

Constantes são iguais a variáveis, mas, não podem ser reasignadas, ou seja, o valor não pode mudar em tempo de compilação (quando você escreve o código) e nem em tempo de execução (quando você usa `crystal run`, ou usa o executável).

Constantes são declaradas iguais a uma variável, mas em CAIXA ALTA.

```crystal
PI = 3.145
TAU = PI * 2
NOME = "CONSTANTES"
TRUE = false

puts PI
puts TAU
puts NOME
puts !TRUE
```

```
$ crystal run constantes.cr

3.145
6.29
CONSTANTES
true
```
