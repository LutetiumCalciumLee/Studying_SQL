SELECT deptno, ename, sal, SUM(sal) OVER(ORDER BY sal) AS total
FROM emp
ORDER BY sal;
