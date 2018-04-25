# Curtis Fortenberry
# Corey Gray

# distinct.nim
# Last rev.: 25 Apr 2018
# Brief demo of strings in Nimrod


# There's a number of different ways to write string literals:
# - Quoted strings, created by wrapping the string in triple,
#   quotes, which never interpret escape codes.
# - Raw strings, created by prefixing a string with 'r', which
#   also do not interpret escape codes except for "" which is
#   interpreted as ".
# - Proc strings, raw strings but the method name that prefixes
#   the string is called.

echo "************** Strings and things **************"

let cstr = "I am a string as you are used to seeing them"

let qstr = """
	this string
	is written on
	multiple
	lines
	because I can do 
	that
	
	and also
	it allows
							tabulators
	/n
"""

let rstr = r"This str""ing is so raw you"" can stil""l see ""the quotes!"

echo cstr
echo "\n"
echo qstr
echo "\n"
echo rstr
echo "\n"

# Note: Unicode symbols are allowed in strings but they are not
# treated in any special way. Generally strings are to be encoded
# as UTF-8, so because of Unicode's backwards compatibility they
# can be treated exactly as ASCII, with values above 127 ignored.

let ustr = """
☜︎■︎⧫︎❒︎⍓︎ ■︎◆︎❍︎♌︎♏︎❒︎ ⬧︎♏︎❖︎♏︎■︎⧫︎♏︎♏︎■︎
♎︎♋︎❒︎🙵 ♎︎♋︎❒︎🙵♏︎❒︎ ⍓︎♏︎⧫︎ ♎︎♋︎❒︎🙵♏︎❒︎
⧫︎♒︎♏︎ ♎︎♋︎❒︎🙵■︎♏︎⬧︎⬧︎ 🙵♏︎♏︎◻︎⬧︎ ♑︎❒︎□︎⬥︎♓︎■︎♑︎
⧫︎♒︎♏︎ ⬧︎♒︎♋︎♎︎□︎⬥︎⬧︎ ♍︎◆︎⧫︎⧫︎♓︎■︎♑︎ ♎︎♏︎♏︎◻︎♏︎❒︎
◻︎♒︎□︎⧫︎□︎■︎ ❒︎♏︎♋︎♎︎♓︎■︎♑︎⬧︎ ■︎♏︎♑︎♋︎⧫︎♓︎❖︎♏︎
⧫︎♒︎♓︎⬧︎ ■︎♏︎⌧︎⧫︎ ♏︎⌧︎◻︎♏︎❒︎♓︎❍︎♏︎■︎⧫︎ ⬧︎♏︎♏︎❍︎⬧︎ ❖︎♏︎❒︎⍓︎ ❖︎♏︎❒︎⍓︎ ♓︎■︎⧫︎♏︎❒︎♏︎⬧︎⧫︎♓︎■︎♑︎
📬︎📬︎📬︎
 ⬥︎♒︎♋︎⧫︎ ♎︎□︎ ⧫︎⬥︎□︎ ⧫︎♒︎♓︎■︎🙵
"""

echo ustr