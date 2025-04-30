SELECT name , jumin , SUBSTR(jumin, 1, 6) || '-/-/-/-' AS replace
From student
where deptno1 = 101