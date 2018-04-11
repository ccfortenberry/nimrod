# Curtis Fortenberry
# Corey Gray

# cond.nim
# Last rev.: 10 Apr 2018
# Demo of conditionals in Nimrod


# Like any other language, Nim also has Flow of Control (FoC) constructs
# including if/else, while.

import strutils, random
randomize()
let answer = random(10) + 1 # Pick a number between [1..10]

while true:
    echo "I'm thinking of a number between [1..10]: "
    let guess = parseInt(stdin.readLine)
    
    # Something to note, Nim does not use the syntax of 'else if' like
    # many languages. It uses the shorter 'elif' syntax.
    if guess < answer:
        echo "Too low, try again"
    elif guess > answer:
        echo "Too high, try again"
    else:
        echo "Correct!"
        break