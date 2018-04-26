# Curtis Fortenberry
# Corey Gray

# seq.nim
# Last rev.: 26 Apr 2018
# Seqs in Nimrod


echo "********** Seqs **********"
# Seqs, short for sequences, are a facility for dynamically
# expandable storage. There are two ways to declare a seq:
# - With the operator@
# - With the newSeq[T](n: int) method

var 
    oneToTen = @[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    seqNew   = newSeq[int](49)

echo "Seq oneToTen: " & $oneToTen
echo "Empty seq: " & $seqNew
echo "\n"

# Once created, it can be modified with the following methods:
# - add(item: T)
# - delete(index: int) -> fun fact: is O(n)
# Length can be found with 'len: int'
# Maximum index can be found with 'high: int'
# The standard 'items' iterator is also available

import math
for index,value in oneToTen:
    oneToTen[index] = value^2

echo "Seq oneToTen: " & $oneToTen
echo "\n"

seqNew.add(1)
echo "Empty seq: " & $seqNew
seqNew.delete(high(seqNew))
echo "Empty seq: " & $seqNew
echo "\n"

# Seqs are dynamically located (meaning on the heap), but 
# they are immutable unless marked as a var. Seqs passed
# as argument by value are also immutable unless passed by
# reference (ie. marked as var or ref in the parameter
# annotation). You can copy a passed by value seq and modify
# the copy however.

proc sqrtIndex(theSeq: var seq[int]) = 
    for i,v in theSeq:
        theSeq[i] = int(sqrt(float(v))) # Double cast since math only takes floats :^)

oneToTen.sqrtIndex
echo "Seq oneToTen: " & $oneToTen