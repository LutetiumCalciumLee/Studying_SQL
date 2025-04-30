SELECT empno , ename , comm , NVL2(comm , 'EXIST' , 'NULL') "NVL2"
FROM emp
WHERE deptno = 30;