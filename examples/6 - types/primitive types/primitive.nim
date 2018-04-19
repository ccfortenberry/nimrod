# Curtis Fortenberry
# Corey Gray

# primitive.nim
# Last rev.: 19 Apr 2018
# Primitives in Nimrod


# Nim has several primitive types:
# - Signed integers: int[8 | 16 | 32 | 64], and int where it's the same size as a pointer
# - Unsigned ints: similar to signed ints but with a preceeding 'u' (ex. uint32)
# - Floating point: float[32 | 64] and float where it's the processor's fastest type
# - Characters: char, which is basically and alias for uint8

# Integers can also represent hex (0x..), octal (0o..), or binary (0b..) literals
# respectively. Underscores are valid in literals and may help with readability.

let
    a: int8 = 0x7F # Works
    b: uint8 = 0b1111_1111 # Works
    d = 0xFF # type is int
    #c: uint8 = 256 # Compile time error

# Precedence rules are the same as in any other language, however the (^, &, |, >>, <<)
# operators are (xor, and, or, shr, shl) respectively. Another thing to note is that the
# '/' operator returns a float, so 'div' is used for integer division.