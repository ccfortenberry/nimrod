# Curtis Fortenberry
# Corey Gray

# oop.nim
# Last rev.: 26 Apr 2018
# Intro to Object Oriented Programming in Nimrod


echo "********** OOP **********"
# Object oriented programming is supported through inheritance and
# methods, which are just virtual procedures. Methods work just like
# procs, but the runtime type of the object that a method is called
# with is used to determine with one to call.

# Inheritance is created with the use of the 'of' keyword in the
# type declaration of an object. A method is overwritten by creating
# a new method with parameter types of the subtype.

type Animal = ref object of RootObj
    name: string
    age: int
method vocalize(this: Animal): string {.base.} = "..."
method ageHumanYrs(this: Animal): int {.base.} = this.age

type Dog = ref object of Animal
method vocalize(this: Dog): string = "woof"
method ageHumanYrs(this: Dog): int = this.age * 7

type Cat = ref object of Animal
method vocalize(this: Cat): string = "meow"


var animals: seq[Animal] = @[]
animals.add(Dog(name: "Sparky", age: 10))
animals.add(Cat(name: "Mitten", age: 10))

for a in animals:
    echo a.vocalize()
    echo a.ageHumanYrs()

# It is also possible to check if a given type is a subtype of a type
# using the 'of' keyword.

echo(animals[0] of Dog)
echo(animals[0] of Cat)
echo(animals[0] of Animal)