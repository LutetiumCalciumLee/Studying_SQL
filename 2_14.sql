SELECT name , jumin , 
    DECODE(SUBSTR(jumin , 7 , 1) , 1 , 'MAN' , 'WOMAN') "GENDER"
FROM student
WHERE deptno1 = 101