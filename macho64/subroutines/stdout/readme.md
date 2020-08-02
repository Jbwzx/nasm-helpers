# _print_string

This simple subroutine prints **string** to standard output.

## Usage

 1. String pointer to **rax**
 2. Call _print

### Description
This subroutine recursively checks string from **rax** until end of it. On each run it increments **rax** *(gives us byte representing current letter)* and **rbx** *(counter - for syswrite argument)*. In the beginning it pushes pointer to string to the stack and pops to **rsi** when finished *(syswrite argument)*. 
