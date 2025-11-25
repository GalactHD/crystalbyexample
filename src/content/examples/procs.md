---
title: Procs
order: 11
nextExample:
  - classes
---

import { Code } from 'astro-expressive-code/components'
import { loadCode } from '../../utils/load-code'

Procs (or closures) are anonymous functions that are stored in variables. They work just like methods: they can accept parameters, return values, and perform modifications.

Procs accept parameters, but the types must be explicitly specified, which increases safety.

```crystal
r = -> { 1 + 1 }

puts r.call

pow = ->(n : Int32, pow : Int32) { n ** pow }

puts pow.call(5, 2)
```

```
$ crystal run procs.cr

2
25
```
