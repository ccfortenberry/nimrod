# Curtis Fortenberry
# Corey Gray

# case.nim
# Last rev.: 12 Apr 2018
# Demo of case statements in Nimrod


# Nim has support for 'case' statements, which is essentially 'switch'
# statements from other languages with some differences
# - Strings, sets, and ranges are usable
# - Case statements are actually expressions
# - It is required that every possible case be covered

proc signCheck(num: int): string = 
    result = case num:
        of low(int).. -1:
            "negative"
        of 0:
            "zero"
        of 1.. high(int):
            "positive"
        else:
            "ERROR: impossible number!"

# One thing to note, case statements generally end with an 'else' but
# a feature of case statements is that possible values are narrowed,
# meaning that sometimes no else statement is necessary.
echo "Sign check of -15"
echo signCheck(-15)
echo "Sign check of 0"
echo signCheck(0)
echo "Sign check of 49"
echo signCheck(49)