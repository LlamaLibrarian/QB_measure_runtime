DIM trys AS INTEGER, count AS LONG, total AS SINGLE, total2 AS SINGLE, start AS SINGLE

CONST NoOfRun% = 50, iteration& = 50000

SCREEN 12
PRINT "Total Time, To run code:"

'  place any variable declaration for your test code here.

total = 0!
FOR trys = 1 TO NoOfRun%

  start = TIMER

  FOR count = -iteration& TO iteration&
  '   place your test code here..
    IF POINT(45, 45) = 0 THEN
    END IF
  NEXT

  total = TIMER - start + total

  PRINT total; ", IF POINT(45, 45) = 0 THEN"
NEXT

'   place any variable declaration for your test code here.

total2 = 0!
FOR trys = 1 TO NoOfRun%

  start = TIMER

  FOR count = -iteration& TO iteration&
  '   place your test code here.
    IF 0 = POINT(45, 45) THEN
    END IF
  NEXT

  total2 = TIMER - start + total2

  PRINT total2; ", IF 0 = POINT(45, 45) THEN"
NEXT

IF total > total2 THEN
PRINT "second construct is better"
ELSE
PRINT "first construct is better"
END IF

PRINT "END OF TEST, PRESS ANY KEY TO END."
SLEEP
