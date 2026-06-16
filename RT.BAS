DIM trys AS INTEGER, count AS LONG, total AS SINGLE, total2 AS SINGLE, start AS SINGLE

'  if takes too long time to do the measurement, set iteration& or NoOfRun% to a smaller number.
CONST NoOfRun% = 50, iteration& = 10000

SCREEN 12
PRINT "Measuring runtime.. have Patience please wait."

'  place any variable declaration for your test code here.

total = 0!
FOR trys = 1 TO NoOfRun%

  start = TIMER

  FOR count = -iteration& TO iteration&
  '   place your test code here..
    IF POINT(245, 245) = 0 THEN
    END IF
  NEXT

  total = TIMER - start + total

NEXT

'   place any variable declaration for your test code here.

total2 = 0!
FOR trys = 1 TO NoOfRun%

  start = TIMER

  FOR count = -iteration& TO iteration&
  '   place your test code here.
    IF 0 = POINT(245, 245) THEN
    END IF
  NEXT

  total2 = TIMER - start + total2

NEXT

PRINT total; ",first:  IF POINT(245, 245) = 0 THEN"
PRINT total2; ",second:  IF 0 = POINT(245, 245) THEN"

IF total > total2 THEN
PRINT "second construct is better"
ELSE
PRINT "first construct is better"
END IF

PRINT "END OF TEST, PRESS ANY KEY TO END."
SLEEP


