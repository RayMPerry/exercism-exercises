# He answers 'Calm down, I know what I'm doing!' if you yell a question at him.
# Bob answers 'Sure.' if you ask him a question, such as "How are you?".
# He answers 'Whoa, chill out!' if you YELL AT HIM (in all capitals).
# He says 'Fine. Be that way!' if you address him without actually saying anything.
# He answers 'Whatever.' to anything else.

import strutils
import re

proc hey*(message: string): string =
  var
    formattedMessage = message.strip
    isQuestion = formattedMessage.endsWith("?")
    isShouting = not formattedMessage.contains(re"[[:lower:]]")
    isSymbolic = not formattedMessage.contains(re"[[:alpha:]]")

  if isShouting and isQuestion and not isSymbolic:
    "Calm down, I know what I'm doing!"
  elif isShouting and not isSymbolic:
    "Whoa, chill out!"
  elif formattedMessage.len == 0:
    "Fine. Be that way!"
  elif isQuestion:
    "Sure."
  else:
    "Whatever."
