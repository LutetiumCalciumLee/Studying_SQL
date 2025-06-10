SELECT deptno,
       ename,
       sal,
       SUM(sal) OVER(PARTITION BY deptno) AS sum_dept,
       ROUND(sal / SUM(sal) OVER(PARTITION BY deptno) * 100, 2) AS "%"
FROM emp
ORDER BY deptno, ename;
