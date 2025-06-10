SELECT deptno, name, pay,
       SUM(pay) OVER(PARTITION BY deptno) AS total_deptno,
       ROUND(pay / SUM(pay) OVER(PARTITION BY deptno) * 100, 2) AS "ratio(%)"
FROM professor
ORDER BY deptno, pay DESC;
