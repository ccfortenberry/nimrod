# Curtis Fortenberry
# Corey Gray

# result.nim
# Last rev.: 10 Apr 2018
# Demo of implicit return variable 'result'

# 'result' is a special return variable that serves as an
# implicit return, since the FoC semantics of 'return'
# are rarely needed.


# It is initialized in the standard way:

# print alphabet
# takes nothing, prints the English alphabet
proc printAlphabet(): string = 
    result = ""
    for letter in 'a'..'z':
        result.add(letter)

echo printAlphabet()

# A gotcha is that declaring a new variable called 'result'
# and expecting it to have the same semantics

# bad result
# takes nothing, returns not what we would expect
proc badResult(): int = 
    var result = 5
    result += 5

echo badResult()