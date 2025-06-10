SELECT e.empno, e.ename, d.dname
FROM emp e, dept d
WHERE e.deptno = d.deptno;
 
SELECT s.name "STU_NAME", p.name "PROF_NAME"
FROM student s, professor p
WHERE s.profno = p.profno;
 
SELECT s.name "STU_NAME", d.dname "DEPT_NAME", p.name "PROF_NAME"
FROM student s, department d, professor p
WHERE s.deptno1 = d.deptno
AND s.profno = p.profno;
   
SELECT s.name "STU_NAME", p.name "PROF_NAME"
FROM student s, professor p
WHERE s.profno = p.profno
AND s.deptno1 = 101;

SELECT c.gname "CUST_NAME", 
       TO_CHAR(c.point, '999,999') "POINT", g.gname "GIFT_NAME"
FROM customer c, gift g
WHERE c.point BETWEEN g.g_start AND g.g_end;

SELECT s.name "STU_NAME", o.total "SCORE", h.grade "CREDIT"
FROM student s, score o, hakjum h
WHERE s.studno = o.studno
   AND o.total >= h.min_point
   AND o.total <= h.max_point;

SELECT s.name "STU_NAME", p.name "PROF_NAME"
FROM student s, professor p
WHERE s.profno = p.profno(+);

SELECT s.name "STU_NAME", p.name "PROF_NAME"
FROM student s, professor p
WHERE s.profno(+) = p.profno;

SELECT s.name "STU_NAME", p.name "PROF_NAME"
FROM student s, professor p
WHERE s.profno = p.profno(+)
UNION
SELECT s.name "STU_NAME", p.name "PROF_NAME"
FROM student s, professor p
WHERE s.profno(+) = p.profno;

SELECT e1.ename "ENAME", e2.ename "MGR_ENAME"
FROM emp e1, emp e2
WHERE e1.mgr = e2.empno;
