SELECT name , tel , 
    DECODE (SUBSTR(tel, 1, 3),
              '02)',  'SEOUL',
              '031',  'GYEONGGI',
              '051',  'BUSAN',
              '052',  'ULSAN',
              '055',  'GYEONGNAM') "LOC"
FROM student
WHERE deptno1=101;