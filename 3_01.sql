SELECT 
  ROUND(MAX(sal + NVL(comm, 0)), 1) AS "MAX",
  ROUND(MIN(sal + NVL(comm, 0)), 1) AS "MIN",
  ROUND(AVG(sal + NVL(comm, 0)), 1) AS "AVG"
FROM emp;
