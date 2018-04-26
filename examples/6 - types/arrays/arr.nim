# Curtis Fortenberry
# Corey Gray

# arr.nim
# Last rev.: 26 Apr 2018
# Arrays in Nimrod


# Nim arrays are basically classic C arrays; size is specified at
# compile time and cannot be changed at runtime.

echo "********** Arrays **********"

let names: array[3, string] = ["Curtis", "Corey", "Third"]
echo names

# The size is encoded into the array type and cannot be accidentally
# lost. A procedure taking an array of variable length must encode
# the length in its type parameters.

proc zip[I, T](a, b: array[I, T]): array[I, tuple[a, b: T]] = 
    for i in low(a)..high(a):
        result[i] = (a[i], b[i])

let surnames: array[3, string] = ["Fortenberry", "Gray", "Person"]
echo surnames

let fullnames = names.zip(surnames)
echo fullnames

# Alternative methods of indexing arrays are allowed, think of the
# size of the array as a range [0, N). With this one can effectively
# create lookup tables.