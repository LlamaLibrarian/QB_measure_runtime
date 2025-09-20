DIM trys AS INTEGER, count AS LONG, total AS SINGLE, start AS SINGLE

CONST NoOfRun% = 10, iteration& = 10000

CLS
PRINT "Average Time, To run code:"

'  place any variable declaration for your test code here.
dummy = -1

total = 0!
FOR trys = 1 TO NoOfRun%

  start = TIMER

  FOR count = -iteration& TO iteration&
  '   place your test code here.. 
  dummy = -dummy
  NEXT

  start = TIMER - start
  total = total + start

  PRINT total / trys; ", dummy = -dummy"
NEXT

'   place any variable declaration for your test code here.
dummy = -1

total = 0!
FOR trys = 1 TO NoOfRun%

  start = TIMER

  FOR count = -iteration& TO iteration&
  '   place your test code here. 
    dummy = NOT dummy
  NEXT

  start = TIMER - start
  total = total + start

  PRINT total / trys; ", dummy = NOT dummy"
NEXT

PRINT "END OF TEST, PRESS ANY KEY TO END."
SLEEP



