proc isLeapYear*(year: int): bool =
  if year mod 4 == 0:
    return year mod 100 != 0 or year mod 400 == 0

