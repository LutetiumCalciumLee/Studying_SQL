SELECT COUNT(*) , COUNT(COMM)
FROM emp;

SELECT COUNT(COMM) , SUM(COMM)
FROM emp;

SET null --null-- ;
SELECT ename , comm
FROM emp;

SELECT COUNT(COMM) , SUM(COMM) , AVG(COMM)
FROM emp ;

SELECT COUNT(*) , SUM(COMM) , AVG(NVL(COMM,0))
FROM emp ;

SELECT MAX(sal), MIN(sal)
FROM emp;

SELECT MAX(hiredate) "MAX",
       MIN(hiredate) "MIN"
FROM emp;

SELECT STDDEV(sal), VARIANCE(sal)
FROM emp;

SELECT deptno, AVG(NVL(sal, 0)) "AVG"
FROM emp
GROUP BY deptno;

SELECT deptno, job, AVG(NVL(sal, 0)) "AVG_SAL"
FROM emp
GROUP BY deptno, job;

SELECT deptno, job, AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY deptno, job
ORDER BY 1, 2;

SELECT deptno, AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY deptno
HAVING AVG(NVL(sal,0)) >=2000;

SELECT deptno, job, ROUND(AVG(sal),1) avg_sal, COUNT(*) cnt_emp 
FROM emp GROUP BY ROLLUP(deptno, job);

SELECT deptno, job, ROUND(AVG(sal),1) avg_sal, COUNT(*) cnt_emp 
FROM emp 
GROUP BY CUBE(deptno, job);

SELECT grade, COUNT(*) 
FROM student 
GROUP BY grade
UNION
SELECT deptno1, COUNT(*) 
FROM student 
GROUP BY deptno1;

SELECT grade, deptno1, COUNT(*) 
FROM student 
GROUP BY GROUPING SETS(grade, deptno1);

SELECT grade, deptno1, COUNT(*), SUM(height), SUM(weight) 
FROM student 
GROUP BY GROUPING SETS(grade, deptno1);

SELECT deptno, LISTAGG(ename,'->') WITHIN GROUP(ORDER BY hiredate) "LISTAGG" 
FROM emp 
GROUP BY deptno;

SELECT MAX(DECODE(day, 'SUN',dayno)) SUN, MAX(DECODE(day,'MON',dayno)) MON, 
       MAX(DECODE(day,'TUE',dayno)) TUE, MAX(DECODE(day,'WED',dayno)) WED, 
       MAX(DECODE(day, 'THU',dayno)) THU, MAX(DECODE(day, 'FRI',dayno)) FRI, 
       MAX(DECODE(day,'SAT',dayno)) SAT 
FROM cal 
GROUP BY weekno 
ORDER BY weekno;

SELECT * 
FROM (SELECT weekno "WEEK", day, dayno FROM cal) 
PIVOT (MAX(dayno) 
FOR day IN('SUN' AS "SUN", 'MON' AS "MON", 'TUE' AS "TUE", 'WED' AS "WED",
           'THU' AS "THU", 'FRI' AS "FRI", 'SAT' AS "SAT")) 
ORDER BY "WEEK";

SELECT deptno, COUNT(DECODE(job, 'CLERK', '0')) "CLERK", 
               COUNT(DECODE(job, 'MANAGER','0')) "MANAGER", 
               COUNT(DECODE(job,'PRESIDENT','0')) "PRESIDENT", 
               COUNT(DECODE(job, 'ANALYST','0')) "ANALYST", 
               COUNT(DECODE(job,'SALESMAN','0')) "SALESMAN" 
FROM emp 
GROUP BY deptno 
ORDER BY deptno;

SELECT * 
FROM (SELECT deptno, job, empno FROM emp) 
PIVOT (COUNT(empno) 
FOR job IN ('CLERK' AS "CLERK", 'MANAGER' AS "MANAGER",
            'PRESIDENT' AS "PRESIDENT", 'ANALYST' AS "ANALYST", 
            'SALESMAN' AS "SALESMAN")) 
ORDER BY deptno;

SELECT ename, hiredate, sal, 
LAG(sal,1,0) OVER (ORDER BY hiredate) "LAG" 
FROM emp;

SELECT ename, hiredate, sal, LEAD(sal,2,1) OVER (ORDER BY hiredate) "LEAD" 
FROM emp;

SELECT empno, ename, sal, RANK() OVER (ORDER BY sal DESC) AS RANK 
FROM emp;

SELECT empno, ename, job, sal, 
        RANK() OVER (ORDER BY sal DESC) sal_rank, 
        DENSE_RANK() OVER (ORDER BY sal DESC) sal_dense_rank, 
        ROW_NUMBER() OVER (ORDER BY sal DESC) sal_row_num 
FROM emp;

SELECT p_date, p_code, p_qty, p_total, 
       SUM(p_total) OVER(ORDER BY p_total) "TOTAL" 
FROM panmae WHERE p_store = 1000;

SELECT p_code, p_store, p_date, p_qty, p_total, 
       SUM(p_total) OVER(PARTITION BY p_code,p_store ORDER BY p_date ) "TOTAL" 
FROM panmae;

SELECT p_code, SUM(SUM(p_qty)) OVER() "TOTAL_QTY", 
       SUM(SUM(p_total)) OVER() "TOTAL_PRICE", p_store, p_qty, p_total, 
       ROUND((RATIO_TO_REPORT(SUM(p_qty)) OVER())*100,2) "aty_%", 
       ROUND((RATIO_TO_REPORT(SUM(p_total)) OVER())*100,2) "total_%" 
FROM panmae 
WHERE p_code = 100 
GROUP BY p_code, p_store, p_qty, p_total;

SELECT p_store, p_date, p_code, p_qty, 
       LAG(p_qty,1) OVER(ORDER BY p_date) "D-1 QTY", p_qty - 
       LAG(p_qty,1) OVER(ORDER BY p_date) "DIFF-QTY", p_total, 
       LAG(p_total,1) OVER (ORDER BY p_date) "D-1 PRICE", p_total - 
       LAG(p_total,1) OVER (ORDER BY p_date) "DIFF-PRICE" 
FROM panmae 
WHERE p_store = 1000;
