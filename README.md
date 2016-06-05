lake-cpp
==

A C/C++/... (GCC) plugin for [Lake](https://github.com/unn4m3d/lake)

Usage
--

```ruby
use :cpp

target :mytarget do
  # Without any additional flags, just "gcc -o out.o in.c"
  CCompiler.new.compile("in.c","out.o")

  # Use another compiler (e.g. g++)
  CCompiler.new(compiler:"g++").compile("in.cpp","out.o")

  # Add flags
  CCompiler.new(flags:"-llua -lglew --std=gnu99").compile("in.c","out.o")
end
```
