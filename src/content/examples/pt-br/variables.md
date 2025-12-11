---
title: Variáveis
order: 3
nextExample:
  - constants
---

Variáveis são uma maneira de guardar dados na programação, no Crystal, variavéis são diretas, apenas necessitando do nome e do valor.

E a linguagem automaticamente infere os tipos.

Crystal permite várias variáveis de uma vez, e uma variável pode guardar valores de outras variáveis.

```crystal
nome = "João"
primeiro_nome, sobre_nome = nome, "Souza"

puts primeiro_nome
puts sobre_nome

x = 40
y = x * 2

puts x + y

r = true
q = false

puts r && q
```

```
$ crystal run variaveis.cr

João
Souza
120
false
```
