SELECT 
  COUNT(*) AS TOTAL,
  COUNT(DECODE(TO_CHAR(birthday, 'MON'), 'JAN', 1)) || 'EA' AS JAN,
  COUNT(DECODE(TO_CHAR(birthday, 'MON'), 'FEB', 1)) || 'EA' AS FEB,
  COUNT(DECODE(TO_CHAR(birthday, 'MON'), 'MAR', 1)) || 'EA' AS MAR,
  COUNT(DECODE(TO_CHAR(birthday, 'MON'), 'APR', 1)) || 'EA' AS APR,
  COUNT(DECODE(TO_CHAR(birthday, 'MON'), 'MAY', 1)) || 'EA' AS MAY,
  COUNT(DECODE(TO_CHAR(birthday, 'MON'), 'JUN', 1)) || 'EA' AS JUN,
  COUNT(DECODE(TO_CHAR(birthday, 'MON'), 'JUL', 1)) || 'EA' AS JUL,
  COUNT(DECODE(TO_CHAR(birthday, 'MON'), 'AUG', 1)) || 'EA' AS AUG,
  COUNT(DECODE(TO_CHAR(birthday, 'MON'), 'SEP', 1)) || 'EA' AS SEP,
  COUNT(DECODE(TO_CHAR(birthday, 'MON'), 'OCT', 1)) || 'EA' AS OCT,
  COUNT(DECODE(TO_CHAR(birthday, 'MON'), 'NOV', 1)) || 'EA' AS NOV,
  COUNT(DECODE(TO_CHAR(birthday, 'MON'), 'DEC', 1)) || 'EA' AS DEC
FROM student;
