# Curtis Fortenberry
# Corey Gray

# varargs.nim
# Last rev.: 26 Apr 2018
# Passing multiple arguments to functions in Nimrod


echo "********** Varags **********"
# Varargs allow passing of multiple parameters to functions. By default,
# the compiler won't coerce anything into types like strings, but there
# is a tool to fix it.

proc print(things: varargs[string, `$`]) = 
    for something in things:
        echo something

echo "Printing normally"
print("...", "but", "not", "this", "thing")