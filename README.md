## C Compiler
- Capable of self-compilation by utilizing the GCC preprocessor and separately compiling variadic functions.
- TODO:
  - Variadic Functions
  - typedefs
  - floating-point numbers
  - struct initializition
  - struct as function argument
  - Preprocessor
  - multi-dimensional arrays
  - switch cases, do while
  - compile time expression
  - better errors
  - const, volatile
## Current compilaion steps:
  - Tokenize
  - Recursive descenet parser to construct AST
  - Type checking
  - Generate assembly (gcc mac for now)
## Sources:
  - [Chibicc (a small C compiler)](https://github.com/rui314/chibicc)
