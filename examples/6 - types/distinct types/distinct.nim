# Curtis Fortenberry
# Corey Gray

# distinct.nim
# Last rev.: 25 Apr 2018
# Distinct types in Nimrod


# Distinct types are like type aliases, but provide type safety
# so that it is impossible to coerce a distinct type into its
# base type without explicit conversion.

type
    Decimal = distinct float

# var d = 20 # Will not compile
var d = 20.Decimal

# Distinct types inherit none of the procedures of their base
# types, but the 'borrow' pragma can be used to solve this issue.

proc `+` *(a,b: Decimal): Decimal {.borrow.}
d = d.Decimal + d.Decimal

# The same principles apply to making a distinct type from object
# classes.

echo "********* Disctint types ***********"
echo "File compiled and executed successfully!"