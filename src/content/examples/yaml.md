---
title: YAML
order: 24
isLast: true
nextExample:
  - nothing
---

Like JSON, Crystal has built-in support for the [YAML](https://yaml.org) format. You can serialize, decode, and more. This is possible with the `yaml` module.

YAML strings are created using heredocs. When parsing the YAML string with `YAML.parse`, it will return a hash map with the contents.

`YAML.dump` allows creating YAML from Crystal data structures, and this method returns a string with the YAML content. You can use `to_yaml` to create the exact same behavior.

The generated `---` is called frontmatter and is generally used for adding metadata.

```crystal
require "yaml"

yaml_string = <<-YAML
---
development:
    servers:
        - us-east-2
        - sa-east-1
YAML

parsed = YAML.parse yaml_string
puts parsed, parsed["development"]["servers"][1]

puts YAML.dump({math: true, constants: [3.14, 2.72, 6.28]})
```

```
$ crystal run yaml.cr

{"development" => {"servers" => ["us-east-2", "sa-east-1"]}}
sa-east-1
---
math: true
constants:
- 3.14
- 2.72
- 6.28
```

Like the JSON module (this module is heavily inspired by the JSON module), you can build YAML with `YAML.build`. The `build` method takes a block and offers methods for creating arrays or keys.

```crystal
my_yaml = YAML.build do |yaml|
  yaml.mapping do
    yaml.scalar "production"
    yaml.mapping do
      yaml.scalar "servers"
      yaml.sequence do
        yaml.scalar "us-east-1"
        yaml.scalar "sa-east-1"
      end
    end
  end
end

puts my_yaml
```

```
$ crystal run yaml_build.cr

---
production:
  servers:
  - us-east-1
  - sa-east-1
```
