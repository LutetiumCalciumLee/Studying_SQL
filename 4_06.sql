SELECT e1.empno, e1.ename, e1.hiredate, COUNT(e2.hiredate) COUNT
FROM emp e1, emp e2
WHERE e1.hiredate > e2.hiredate(+)
GROUP BY e1.empno, e1.ename, e1.hiredate
ORDER BY COUNT;