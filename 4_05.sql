SELECT p1.profno, p1.name, p1.hiredate, COUNT(p2.hiredate) COUNT
FROM professor p1, professor p2
WHERE p1.hiredate > p2.hiredate(+)
GROUP BY p1.profno, p1.name, p1.hiredate
ORDER BY COUNT;