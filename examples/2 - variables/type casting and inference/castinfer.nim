# Curtis Fortenberry
# Corey Gray

# castinfer.nim
# Last rev.: 10 Apr 2018
# Static typing, type casting, and inference; oh my!


# Nim is statically typed, as such each variable has an
# associated type with it.

var intVar = 49                      # inferred as an int
var strVar = "I am a happy string"   # a string

# Assigning a variable of one type to a different type
# will make the compiler unhappy
# x = y # Don't do this!


# Types can be specified with a ":", there are some cases
# where you will need to do this, namely:
# - Type conversion (safety is checked by the compiler)
# - Annotating the variable's type
# - Using 'cast', which is unsafe

var divide = int(intVar / 8)
var strVar2: string = "I am an unhappy string"
