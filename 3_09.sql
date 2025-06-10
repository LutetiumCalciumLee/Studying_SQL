SELECT deptno, ename, sal, 
       (SELECT SUM(sal) FROM emp) AS total_sal,
       ROUND(sal / (SELECT SUM(sal) FROM emp) * 100, 2) AS "%"
FROM emp
ORDER BY sal DESC;
