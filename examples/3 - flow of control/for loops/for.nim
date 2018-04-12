# Curtis Fortenberry
# Corey Gray

# for.nim
# Last rev.: 12 Apr 2018
# Demo of for loops and iterators in Nimrod


# Like any other sensible language, Nim has first class iterators and
# for-loops. The 'continue' and 'break' keywords are also valid to
# use. There are two kinds of iterators, and two special methods that
# for-loops work with.

######################## Items & Pairs ###############################

# When iterating over an object with one item, the 'items' iterator is
# called with the desired type to be iterated over.

echo "Demo of items and pairs iterators"
type Range = object
    low: int
    high: int

iterator items(range: Range): int = 
    var i = range.low
    while i <= range.high:
        yield i
        inc i

# Try: the following would take a range of ints and convert them into
# chars.
# iterator pairs(range: Range): tuple[a: int, b: int] = 
#     for i in range: # uses Range.items
#         yield (i, char(i + ord('a')))

for pos in Range(low: 1, high: 10):
    echo pos

# Try: when using the pairs iterator, iterators for getting a key and a
# value are needed.
# for key, value in Range(low: 0, high: 25)
#     echo value

echo "\n"

######################## Operators ###############################

# Iterators can also be defined as infix operators, when the name is
# enclosed in backticks. For example, the standard library defines the
# slice iterator, which allows for iterating through ordinal types (see
# Enum types)

echo "Demo of operators"

# Operators can only be symbols
iterator `--`*[T](a: T, b: T): T =
    var i: T = T(a)
    while i <= b:
        yield i
        inc i

for i in 0--5:
    echo i

echo "\n"

######################## Inline Iters ###############################

# Inline iterators basically take the body of the for-loop and inline
# it into the iterator. This means no function calling overhead
# CAUTION: Careless use can increase code size

echo "Demo of inline iters"

iterator listAlphabet(last: int): char = 
    var letter = 'a'
    var i = 0
    while i < last:
        yield letter
        inc letter
        inc i

for i in listAlphabet(13):
    echo i

echo "\n"

######################## Closure Iters ###############################

# Closure iterators hold onto their state and can be resumed at any
# time. The 'finished()' function can be used to check if there are any
# more elements available in the iterator.

echo "Demo of closure iters"

proc listAlphabet(last: int): iterator(): char = 
    return iterator(): char = 
        var letter = 'a'
        var i = 0
        while i < last:
            yield letter
            inc letter
            inc i

let getEnglishAB = listAlphabet(26)
var output = ""

while true:
    let next = getEnglishAB()
    if finished(getEnglishAB):
        break
    output.add($next & " ")

echo output
