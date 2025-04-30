SELECT RPAD(ename , 9 , SUBSTR('6789', LENGTH(ename) - 5 + 1))
FROM emp
WHERE deptno = 10