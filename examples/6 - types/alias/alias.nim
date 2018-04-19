# Curtis Fortenberry
# Corey Gray

# alias.nim
# Last rev.: 19 Apr 2018
# Type aliases in Nimrod


# User defined types are declared and defined in the 'type' section. It is
# worth noting that aliased types are not the same as their original type.
# If you want type safety, use distinct types.

echo "********** Type Aliases and things **********"

type
    chars = string

let name: chars = "Moron"
echo name