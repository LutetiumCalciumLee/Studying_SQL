SELECT deptno, name, pay,
       (SELECT SUM(pay) FROM professor) AS total_pay,
       ROUND(pay / (SELECT SUM(pay) FROM professor) * 100, 2) AS ratio_x
FROM professor
ORDER BY pay DESC;
