# Curtis Fortenberry
# Corey Gray

# firstclass.nim
# Last rev.: 19 Apr 2018
# Demo that functions can also ride first class in Nimrod


# Nim supports closures as well as passing functions as function
# parameters. There are two syntaxes available for this, the first
# being regular proc syntax, and the other being do-notation.

import sequtils

let twoPowers = @[1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096]

echo "********* Demo first class functions *********"
echo "Do-notation\n"
echo (twoPowers.filter do (n: int) -> bool: n > 50)
echo "\nProc syntax\n"
echo twoPowers.filter(proc (n: int): bool = n > 50)
echo "\nFunction passing\n"
proc isAbove50(n: int): bool = n > 50
echo twoPowers.filter(isAbove50)
