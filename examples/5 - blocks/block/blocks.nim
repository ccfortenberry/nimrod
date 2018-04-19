# Curtis Fortenberry
# Corey Gray

# blocks.nim
# Last rev.: 19 Apr 2018
# Demo of how code blocks work in Nimrod


# Blocks can be introduced in two ways: by indentation or with
# parenthisizing. It is worth noting that tab chars are not
# allowed in Nim.

# Examples of where indentation is used include if-elif-else,
# loops, an block statements.

import strutils
echo "********** Blocks and stuff... **********"

if true:
    echo "You can't tell this but this sentence is actually indented"

while false:
    echo "I tried to get stuck in a loop by my condition won't let me"

block:
    echo "You can't tell this either but this sentence is in a block stmt"

# Fun fact: you can label a block statement which is useful for
# breaking out of nested loops and scoping in general.

echo "\nLet's increment a counter in a horribly roundabout way!"

block increment:
    var counter = 0
    for i in 0..10000000:
        inc counter
        echo counter
        for i in 0..10000000:
            inc counter
            echo counter
            for i in 0..10000000:
                inc counter
                echo counter
                for i in 0..10000000:
                    inc counter
                    echo counter
                    for i in 0..10000000:
                        inc counter
                        echo counter
                        for i in 0..10000000:
                            inc counter
                            echo counter
                            for i in 0..10000000:
                                inc counter
                                echo counter
                                for i in 0..10000000:
                                    inc counter
                                    echo counter
                                    for i in 0..10000000:
                                        inc counter
                                        echo counter
                                        for i in 0..10000000:
                                            inc counter
                                            echo counter
                                            break increment

# Another fun fact: parentheses can be used in much the same way
# as brace pairs. The same rules apply with one additional gotcha,
# that being end of statement inference is not applicable in this
# case. This means you are required to put a semicolon at the end
# of your expressions as if you were writing in C/C++. While this
# is a feature of the language, other than visual appeal there is
# no added benefit to writing this way.

proc sqMe(n: int): int = (
    result = n*n;
    )

echo "\nSquare of " & intToStr(5) & " is " & intToStr(sqMe(5))