DIM dummy, trys AS INTEGER, count AS LONG, total, start AS SINGLE

CONST NoOfTest% = 10, iteration& = 100000

CLS
PRINT "Average Time, To run code:"

dummy = -1
total = 0!

FOR trys = 1 TO NoOfTest%

  start = TIMER

  FOR count = -iteration& TO iteration&
    dummy = -dummy
  NEXT

  start = TIMER - start
  total = total + start

  PRINT total / trys; ", dummy = -dummy"
NEXT

dummy = -1
total = 0!

FOR trys = 1 TO NoOfTest%

  start = TIMER

  FOR count = -iteration& TO iteration&
    dummy = NOT dummy
  NEXT

  start = TIMER - start
  total = total + start

  PRINT total / trys; ", dummy = NOT dummy"
NEXT
