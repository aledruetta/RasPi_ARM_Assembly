# RasPi ARM Assembly

## Raspberry Pi, ARM Assembly experimentations

---

### GDB debugging commands

h[elp] [keyword]

Displays help information.

r[un] [args]

Begin program execution. If the program normally takes commandline arguments, you should specify them here.

b[reak] [address]

Set a breakpoint at the specified address (or at the current address if none speci-fied). Addresses can be given symbolically (e.g.,foo) or numerically (e.g.*0x10a38).When execution reaches a breakpoint, you are thrown back into the gdb command line interpreter.

c[ontinue]

Continue execution after stopping at a breakpoint.

i[nfo] b[reak]

Display numbered list of all breakpoints currently set.

d[elete] b[reakpoints]

number Delete specified breakpoint number.

p[rint][/format] expr

Print the value of an expression using the specified format (decimal if unspecified). Expressions can involve program variables or registers, which are specified using a $ rather than a % sign. Useful formats include:

- d decimal
- x hex
- t binary
- f floating point
- i instruction
- c character

For example, to display the value of register %rdi in decimal, type p/x $rdi. Note that you need to use the 64-bit (%r) forms of register names. To see thevalue of the current program counter, type p/x $rip.

i[nfo] r[egisters]

registerAn alternative way to print the value of a register (or, if none is specified, of allregisters) in hex and decimal. Specify the register without a leading %, e.g., rdi.

display $register

Display the content of a register.

x/[count][format] [address]

Examine the contents of a specified memory address, or the current address ifnone specified.  If count is specified, displays specified number of words.  Ad-dresses can be symbolic (e.g.,main) or numeric (e.g.,0x10a44). Formats areas for print. Particularly useful for printing the program text, e.g., x/100i foo disassembles and prints 100 instructions starting at foo.

disas[semble] address [,address]

Another way to print the assembly program text surrounding an address, or between two addresses.

set var=expr

Set specified register or memory location to value of expression. Examples:

    set $rdi=0x456789AB or set myVar=myVar*2.

s[tep] i

Execute a single instruction and then return to the command line interpreter.

n[ext] i

Like stepi, except that if the instruction is a subroutine call, the entire subroutine is executed before control returns to the interpreter.

whe[re]

Show current activation stack.

q[uit]

Exit from gdb.

Source: [<http://web.cecs.pdx.edu/~apt/cs491/gdb.pdf>]
