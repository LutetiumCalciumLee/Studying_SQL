SELECT *
FROM emp ;

SET PAGES 50
SELECT empno, ename
FROM emp ;

SET LINE 200
SET PAGESIZE 50
COL deptno FOR 999
COL dname FOR a15
SELECT *
FROM dept ;

SET pagesize 50
SELECT name, 'good morning~~!' "Good Morning"
FROM professor ;

SELECT DISTINCT job, ename
FROM emp
ORDER BY 1,2 ;

SELECT ename || job
FROM emp ;

SELECT ename||'''s job is '|| job "NAME AND JOB"
FROM emp ;

SELECT empno, ename
FROM emp
WHERE empno=7900 ;

SELECT ename, sal
FROM emp
WHERE sal < 1000 ;

SELECT empno, ename, sal
FROM emp
WHERE ename='SMITH' ;

SELECT ename, hiredate
FROM emp
WHERE ename = 'SMITH' ;

SELECT empno, ename, sal
FROM emp
WHERE hiredate = '80/12/17' ;

SELECT ename, sal
FROM emp
WHERE deptno = 10 ;

SELECT ename, sal, sal+100
FROM emp
WHERE deptno = 10 ;

SELECT ename, sal, sal*1.1
FROM emp
WHERE deptno = 10 ;

SELECT empno, ename, sal
FROM emp
WHERE sal >= 4000 ;

SELECT empno, ename, sal
FROM emp
WHERE ename >= 'W' ;

SELECT ename, hiredate
FROM emp;

SELECT ename, hiredate
FROM emp
WHERE hiredate >= '81/12/25' ;

SELECT empno, ename, sal
FROM emp
WHERE sal BETWEEN 2000 AND 3000 ;

SELECT empno, ename, sal
FROM emp
WHERE sal >= 2000
AND sal<= 3000 ;

SELECT ename
FROM emp
ORDER BY ename ;

SELECT ename
FROM emp
WHERE ename BETWEEN 'JAMES' AND 'MARTIN'
ORDER BY ename ;

SELECT empno , ename , deptno
FROM emp
WHERE deptno IN (10,20) ;

SELECT empno , ename , sal
FROM emp
WHERE sal LIKE '1%' ;

SELECT empno , ename , sal
FROM emp
WHERE ename LIKE 'A%' ;

SELECT empno , ename , hiredate
FROM emp
WHERE hiredate LIKE '80%' ;

SELECT empno , ename , hiredate
FROM emp
WHERE hiredate LIKE '___12%' ;

SELECT empno , ename , comm
FROM emp
WHERE comm IS NULL ;

SELECT empno , ename , comm
FROM emp
WHERE comm IS NOT NULL ;

SELECT ename , hiredate , sal
FROM emp
WHERE hiredate > '82/01/01' AND sal >= 1300 ;

SELECT ename , hiredate , sal
FROM emp
WHERE hiredate > '82/01/01' OR sal >= 1300 ;

SELECT empno , ename , sal , comm
FROM emp
WHERE sal > 1000 AND (comm <1000 OR comm IS NULL) ;

SELECT empno , ename , sal , comm
FROM emp
WHERE sal > 1000 AND comm <1000 OR comm IS NULL ;

SET verify OFF
SELECT empno , ename , sal
FROM emp
WHERE empno = &empno ; --7902--

SELECT empno , ename , sal
FROM &table --emp--
WHERE sal = 3000 ;

SELECT ename , sal , hiredate
FROM emp ;

SELECT ename , sal , hiredate
FROM emp
ORDER BY ename ;

SELECT deptno , sal , ename 
FROM emp
ORDER BY deptno ASC , sal DESC ;

SELECT ename , sal , hiredate
FROM emp
WHERE sal > 1000
ORDER BY 2,1 ;

SELECT studno , name , deptno1 , 1
FROM student
WHERE deptno1 = 101
UNION
SELECT profno , name , deptno , 2
FROM professor
WHERE deptno = 101 ;

SELECT studno , name , deptno1 , 1
FROM student
WHERE deptno1 = 101
UNION ALL
SELECT profno , name , deptno , 2
FROM professor
WHERE deptno = 101 ;

SELECT studno , name
FROM student
WHERE deptno1 = 101
UNION
SELECT studno , name
FROM student
WHERE deptno2 = 201 ;

SELECT studno , name
FROM student
WHERE deptno1 = 101
UNION ALL
SELECT studno , name
FROM student
WHERE deptno2 = 201 ;

SELECT studno , name
FROM student
WHERE deptno1 = 101
INTERSECT
SELECT studno , name
FROM student
WHERE deptno2 = 201 ;

SELECT empno , ename , sal
FROM emp
MINUS
SELECT empno , ename , sal
FROM emp
WHERE sal > 2500 ;
