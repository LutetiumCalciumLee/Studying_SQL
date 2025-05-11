SELECT ename, INITCAP(ename) "INITCAP"
FROM emp
WHERE deptno= 10 ;

SELECT ename, LOWER(ename) "LOWER", UPPER(ename) "UPPER"
FROM emp
WHERE deptno = 10 ;

SELECT ename, LENGTH(ename) "LENGTH", LENGTHB(ename) "LENGTH"
FROM emp
WHERE deptno = 20 ;

SET verify OFF
SELECT ename, LENGTH(ename)
FROM emp
WHERE LENGTH(ename) > LENGTH('&ename') ; --smith--

SELECT CONCAT(ename, job)
FROM emp
WHERE deptno=10 ;

COL "3,2" FOR a6
COL "-3,2" FOR a6
COL "-3,4" FOR a6
SELECT SUBSTR('abcde',3,2) "3,2" ,
       SUBSTR('abcde',-3,2) "-3,2" ,
       SUBSTR('abcde',-3,4) "-3,4"
FROM dual ;

SELECT name, SUBSTR(jumin,3,4) "Birthday",
             SUBSTR(jumin, 3, 4) -1 "Birthday - 1"
FROM student
WHERE deptno1 = 101 ;

SELECT 'A-B-C-D', INSTR('A-B-C-D','-',1,3) "INSTR"
FROM dual ;

SELECT 'A-B-C-D', INSTR('A-B-C-D','-',3,1) "INSTR"
FROM dual ;

SELECT 'A-B-C-D', INSTR('A-B-C-D','-',-1,3) "INSTR"
FROM dual ;

SELECT 'A-B-C-D', INSTR('A-B-C-D','-',-6,2) "INSTR"
FROM dual ;

SELECT name , tel , SUBSTR(tel, 1, INSTR(TEL, ')') - 1) "AREA CODE"
FROM student
WHERE deptno1 = 201 ;

COL name FOR a20
COL id FOR a10
COL LPAD (id,10,'*') FOR a20

SELECT name , id , LPAD(id , 10 , '*')
FROM student
WHERE deptno1 = 201 ;

SELECT RPAD(ename , 10 , '-')
FROM emp
WHERE deptno = 10 ;

SELECT ename
FROM emp
WHERE deptno = 10 ;

SELECT LTRIM(ename , 'C')
FROM emp
WHERE deptno = 10 ;

SELECT ename , RTRIM(ename , 'R') "RTRIM"
FROM emp
WHERE deptno = 10 ;

SELECT ename , REPLACE(ename , SUBSTR(ename ,1, 2), '**') "REPLACE"
FROM emp
WHERE deptno = 10 ;

SELECT ROUND(987.654,2) "ROUND1",
       ROUND(987.654,0) "ROUND2",
       ROUND(987.654,-1) "ROUND3"
FROM dual ;

SELECT TRUNC(987.654,2) "TRUNC1",
       TRUNC(987.654,0) "TRUNC2",
       TRUNC(987.654,-1) "TRUNC3"
FROM dual ;

SELECT MOD(121,10) "MOD",
       CEIL(123.45) "CEIL",
       FLOOR(123.45) "FLOOR"
FROM dual ;

SET pagesize 50
SELECT rownum "ROWNO" , CEIL(rownum/3) "TEAMNO" ,ename
FROM emp ;

SELECT POWER(2,3)
FROM dual ;

SELECT SYSDATE
FROM dual ;

SELECT MONTHS_BETWEEN ('25/03/03',SYSDATE)
FROM dual ;

SELECT MONTHS_BETWEEN (SYSDATE,'25/03/03')
FROM dual ;

SELECT ename , hiredate ,
       ROUND(MONTHS_BETWEEN(TO_DATE(SYSDATE),hiredate),1) "DATE1" ,
       ROUND(((TO_DATE(SYSDATE)-hiredate)/31),1) "DATE2"
FROM emp
WHERE deptno = 10 ;    

SELECT SYSDATE , NEXT_DAY(SYSDATE ,'¿ù') 
FROM dual;

SELECT SYSDATE , LAST_DAY(SYSDATE), LAST_DAY('25/04/01')
FROM dual ;

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD : HH24 : MI : SS' ;
SELECT SYSDATE , ROUND(SYSDATE) , TRUNC(SYSDATE)
FROM dual ;

SELECT 2 + '2'
FROM dual ;

SELECT SYSDATE , TO_CHAR(SYSDATE,'YYYY') "YYYY",
                TO_CHAR(SYSDATE,'YY') "YY",
                TO_CHAR(SYSDATE,'YEAR') "YEAR"
FROM dual ;

SELECT SYSDATE , TO_CHAR(SYSDATE,'MM') "MM",
                TO_CHAR(SYSDATE,'MON') "MON",
                TO_CHAR(SYSDATE,'MONTH') "MONTH"
FROM dual ;

SELECT SYSDATE , TO_CHAR(SYSDATE,'DD') "DD",
                TO_CHAR(SYSDATE,'DAY') "DAY",
                TO_CHAR(SYSDATE,'DDTH') "DDTH"
FROM dual ;

SELECT SYSDATE , TO_CHAR(SYSDATE,'YYYY-MM-DD:HH24:MI:SS')
FROM dual ;

SELECT empno , ename , sal , comm ,
        TO_CHAR((sal*12)+comm , '999,999') "SALARY"
FROM emp
WHERE ename = 'ALLEN' ;

SELECT name, pay , bonus ,
        TO_CHAR((pay*12)+bonus,'999,999') "TOTAL"
FROM professor
WHERE deptno = 201 ;

SELECT ASCII('A')
FROM dual ;

SELECT ename , comm , NVL(comm,0) , NVL(COMM,100)
FROM emp
WHERE deptno = 30 ;

SELECT empno , ename , sal , comm ,
        NVL2(comm , sal+comm , sal*0) "NVL2"
FROM emp
WHERE deptno = 30 ;

SELECT deptno , name , DECODE(deptno , 101 , 'Computer Engineering') "DANME"
FROM professor ;

SELECT deptno , name , DECODE(deptno , 101 , 'Computer Engineering' , 'ETC') "DANME"
FROM professor ;

SELECT deptno , name , DECODE(deptno , 101 , 'Computer Engineering'
                                     , 102 , 'Electronic Engineering'
                                     , 103 , 'Chemistry Engineering'
                                     , 'ETC') "DANME"
FROM professor ;

SELECT deptno , name , DECODE(deptno , 101 , DECODE(name , 'Audie Murphy' , 'BEST!')) "ETC"
FROM professor ;

SELECT deptno , name , DECODE(deptno , 101 , DECODE(name , 'Audie Murphy' , 'BEST!' , 'GOOD!')) "ETC"
FROM professor ;

SELECT deptno , name , DECODE(deptno , 101 , DECODE(name , 'Audie Murphy' , 'BEST!' , 'GOOD!'),'N/A') "ETC"
FROM professor ;

SELECT name , tel ,
        CASE(SUBSTR(tel , 1 , INSTR(tel, ')')-1)) WHEN '02' THEN 'SEOUL'
                                                WHEN '031' THEN 'GYEONGGI'
                                                WHEN '051' THEN 'BUSAN'
                                                WHEN '052' THEN 'ULSAN'
                                                WHEN '055' THEN 'GYEONGNAM'
                                                        ELSE 'ETC'
        END "LOC"
FROM student
WHERE deptno1 = 201 ;

SELECT name , SUBSTR(jumin,3,2) "MONTH" 
        , CASE WHEN SUBSTR(jumin,3,2) BETWEEN '01' AND '03' THEN '1/4'
                WHEN SUBSTR(jumin,3,2) BETWEEN '04' AND '06' THEN '2/4'
                WHEN SUBSTR(jumin,3,2) BETWEEN '07' AND '09' THEN '3/4'
                WHEN SUBSTR(jumin,3,2) BETWEEN '10' AND '12' THEN '4/4'
        END "QUARTER"
FROM student ;

SELECT *
FROM t_reg ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '[a-z]') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '[A-Z]') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '[a-zA-Z]') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '[a-z] ') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '[a-z] [0-9]') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '[[:space:]]') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '[A-Z]{2}') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '[A-Z]{3}') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '[A-Z]{4}') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '[0-9]{3}') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '[A-Z][0-9]{3}') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '[0-9][A-Z]') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '^[A-Za-z]') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '^[0-9A-Z]') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '^[a-z]|^[0-9]') ;

SELECT name , id
FROM student
WHERE REGEXP_LIKE(id,'^M(a|o)') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-zA-Z]$') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text,'[[:alpha]]$') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '^[^a-z]') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '^[^0-9]') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '^[a-z]|^[0-9]') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '^[^0-9a-z]') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '[^a-z]') ;

SELECT *
FROM t_reg
WHERE NOT REGEXP_LIKE(text , '[a-z]') ;

SELECT name , tel
FROM student
WHERE REGEXP_LIKE(tel,'^[0-9]{2}\)[0-9]{4}') ;

SELECT name , id
FROM student
WHERE REGEXP_LIKE(id, '...r.') ;

SELECT *
FROM t_reg2 ;

SELECT *
FROM t_reg2
WHERE REGEXP_LIKE(ip,'^[10]{2}\.[10]{2}\.[10]{2}') ;

SELECT *
FROM t_reg2
WHERE REGEXP_LIKE(ip,'^[172]{3}\.[16]{2}\.[168]{3}') ;

SELECT *
FROM t_reg
WHERE NOT REGEXP_LIKE(text , '[a-zA-Z]') ;

SELECT *
FROM t_reg
WHERE NOT REGEXP_LIKE(text , '[0-9]') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '!') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '?') ;


SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '*') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '\?') ;

SELECT *
FROM t_reg
WHERE REGEXP_LIKE(text , '\*') ;

SELECT *
FROM t_reg
WHERE NOT REGEXP_LIKE(text , '\?') ;

COL "NO -> CHAR" FOR a20
SELECT text , REGEXP_REPLACE(text, '[[:digit:]]' , '*') "NO -> CHAR"
FROM t_reg ;

COL "ADD CHAR" FOR a30
SELECT text , REGEXP_REPLACE(text, '([0-9])' , '\1-*') "ADD CHAR"
FROM t_reg ;

SET LINE 200
COL no FOR 999
COL ip FOR a20
COL "Dot Remove" FOR a20
SELECT no , ip , REGEXP_REPLACE(ip,'\.','') "Dot Remove"
FROM t_reg2 ;

SELECT no , ip , REGEXP_REPLACE(ip,'\.','/',1,1) "Dot Remove"
FROM t_reg2 ;

SELECT REGEXP_REPLACE('aaa   bbb','( ){1,}','')
FROM dual ;

SELECT REGEXP_REPLACE('aaa bbb','( ){2,}','') "ONE" ,
        REGEXP_REPLACE('aaa  bbb','( ){2,}','') "TWO"
FROM dual ;

SELECT REGEXP_REPLACE('aaa bbb','( ){2,}','*') "ONE" ,
        REGEXP_REPLACE('aaa  bbb','( ){2,}','*') "TWO" ,
        REGEXP_REPLACE('aaa   bbb','( ){2,}','*') "THREE" 
FROM dual ;

SET VERIFY OFF
SELECT studno , name , id
FROM student
WHERE id=REGEXP_REPLACE('&id' , '( ){1,}' , '') ;  --75 true--

SELECT studno , name , id
FROM student
WHERE id=LOWER(REGEXP_REPLACE('&id' , '( ){1,}' , '')) ;  --75 true--

SELECT REGEXP_REPLACE(SYSDATE , '([[:digit:]]{4})([[:digit:]]{2})([[:digit:]]{2})' , '\1-\2-\3')
FROM dual ;

SELECT REGEXP_SUBSTR('ABC* *DEF  $GHI %KJL' , '[^ ]+[DEF]')
FROM dual ;

SELECT name, LTRIM(REGEXP_SUBSTR(hpage, '/([[:alnum:]]+\.?){3,4}?'), '/') "URL"
FROM professor
WHERE hpage IS NOT NULL ;

SELECT name, LTRIM(REGEXP_SUBSTR(email, '@([[:alnum:]]+\.?){3,4}?'), '@') domain
FROM professor
WHERE deptno IN (101, 201);

SELECT REGEXP_SUBSTR('sys/oracle@racdb:1521:racdb', '[^:]+', 1, 3) result
FROM dual;

SELECT REGEXP_SUBSTR('sys/oracle@racdb:1521:racdb', '[^:]+', 1, 2) result
FROM dual;

SELECT REGEXP_SUBSTR('sys/oracle@racdb:1521:rac', '[^/:]+', 1, 2) result
FROM dual;

SELECT REGEXP_SUBSTR('sys/oracle@racdb:1521:rac', '[^/:]+', 1, 1) result
FROM dual;

SELECT text, REGEXP_COUNT(text, 'A')
FROM t_reg;

SELECT text, REGEXP_COUNT(text, 'c', 3)
FROM t_reg;

SELECT text,
       REGEXP_COUNT(text, 'c') "RESULT 1",
       REGEXP_COUNT(text, 'c', 1, 'i') "RESULT 2"
FROM t_reg;

SELECT text,
       REGEXP_COUNT(text, '.') RESULT1,
       REGEXP_COUNT(text, '#') RESULT2
FROM t_reg;

SELECT text,
       REGEXP_COUNT(text, 'aa') RESULT1,
       REGEXP_COUNT(text, 'a{2}') RESULT2,
       REGEXP_COUNT(text, '(a)(a)') RESULT3
FROM t_reg;
