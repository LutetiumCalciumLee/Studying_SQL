SELECT name , tel , REPLACE(tel , SUBSTR(tel , 5 , 3) , '***') "REPLACE"
FROM student
Where deptno1 = 102