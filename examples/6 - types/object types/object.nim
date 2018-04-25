# Curtis Fortenberry
# Corey Gray

# object.nim
# Last rev.: 24 Apr 2018
# Objects in Nimrod


# Nim supports a facility for classes/structs, which it calls objects and they
# work in much the same way. They are tracked by the garbage collecter by
# default so there is no need to explicitly free them after allocation.

type
    Student* = object
        name*, title*: string
        id: int

var stud1: Student
stud1 = Student(name: "Corey", id: 123456) # Mutable
let stud2 = Student(name: "Curtis", id: 789100) # Immutable

# This works thanks to uniform calling syntax
# Both studs are created on the stack, but since stud2 is declared as a 'let'
# it's immutable, thus changing any of its fields will result in a compile-
# time error.

# Objects can also be created as reference objects, which allocates an object
# on the heap.

let stud3: ref Student = new(Student)
stud3.name = "Glenn"
stud3.id = 112358

# In this case stud3 is allocated on the heap and is immutable, but the values
# it points to are still mutable.

stud3.id = 132134

# In many cases creating an object by reference is what is most wanted, which
# can be accomplished with the 'ref' keyword.

type
    Faculty* = ref object
        title*: string

let prof = Faculty(title: "Professor")


import strutils
echo "*************** Objects ***************"
echo stud1
echo stud2
echo stud3.name
echo intToStr(stud3.id)
echo prof.title

# It is worth noting that objects have print functionality builtin, while ref
# objects do not.