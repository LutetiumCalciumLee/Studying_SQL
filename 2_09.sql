SELECT STUDNO , NAME , BIRTHDAY
FROM Student
WHERE TO_CHAR(birthday, 'MM') = '01'