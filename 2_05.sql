SELECT ename , REPLACE(ename , SUBSTR(ename , 2 , 2) , '--')
FROM emp
WHERE deptno = 20