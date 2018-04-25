# Curtis Fortenberry
# Corey Gray

# enum.nim
# Last rev.: 24 Apr 2018
# Enums in Nimrod


# Enums in Nim are much like the ones in C, but they are type checked and
# there are no anonymous enums in Nim.

type
    Compass = enum
        NORTH, SOUTH, EAST, WEST

    # The 'pure' pragma requires that all references
    # to values be qualified.
    Colors {.pure.} = enum
        BLACK = "000000", WHITE = "FFFFFF"

# While enums can have disjoint values, it should not be used for any other
# reason than C compatibility as it breaks the idea that enums are ordinal.

echo "****** Enums ******"
for direction in ord(low(Compass))..ord(high(Compass)):
    echo Compass(direction), " ord: ", direction