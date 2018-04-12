# Curtis Fortenberry
# Corey Gray

# proc.nim
# Last rev.: 12 Apr 2018
# Demo of functions in Nimrod


####################### Basic Procedures #######################

# In Nim, functions are called procedures, or 'procs' as specified
# for keywords. They require their paramters and return type be
# annotated, and have uniform function call syntax.
# i.e.: foo(a,b) or a.foo(b)

echo "Demo of a basic proc: fibonacci"
import strutils
proc fibo(n: int): int =
    if n < 2:
        result = n
    else:
        result = fibo(n-1) + (n-2).fibo

echo "The fibonacci of 10 is: " & intToStr(fibo(10))
echo "\n"

####################### Exporting #######################

# Procs can be exported and used by other modules by adding a '*'
# after the proc's identifier.

# Ex.: proc fibo*(...): ... = ...
# - Exports a procedure called fibo


####################### Side Effect Analysis #######################

# Nim supports functional programming, and by extension also includes
# the {.noSideEffect.} pragma, which statically ensures that there
# are no side effects.

# As an example
echo "Demo of a noSideEffect proc"
proc sum(x, y: int): int {.noSideEffect.} = 
    x+y

echo sum(8,9)
echo "\n"

####################### Operators #######################

# New operators can be defined by enclosing symbols between a pair of
# backticks.

echo "Demo of a user defined operator: *^"

# Simple compute square proc
proc `*^`(x: int): int = 
    x * x

echo intToStr(*^6)
echo "\n"

####################### Generic Functions #######################

# Generic functions are a lot like C++ templates and allow for the same
# statically checked, duck-typing semantics

echo "Demo of generic functions"

proc `+`(a, b: string): string =
    a & b

proc `*`[T](a: T, b: int): T = 
    result = ""
    for i in 0..b:
        result = result + a

echo ("|"*15)
echo "\n"