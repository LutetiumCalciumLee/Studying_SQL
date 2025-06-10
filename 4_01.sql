SELECT s.name STU_NAME, s.deptno1, d.dname DEPTNO1_NAME
FROM student s, department d
WHERE s.deptno1 = d.deptno;