INSERT INTO professor4 (profno, name, pay)
SELECT profno, name, pay
FROM professor
WHERE profno <= 3000;