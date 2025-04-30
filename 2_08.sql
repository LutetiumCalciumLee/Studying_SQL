SELECT name , tel , REPLACE(tel , SUBSTR(tel , -4, 4) , '****') "REPLACE"
FROM student
WHERE deptno1 = 101