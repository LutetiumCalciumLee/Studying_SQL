SELECT empno , ename , hiredate , TO_CHAR((sal*12)+comm,'$999,999') "SAL" ,
        TO_CHAR(((sal*12)+comm)*1.15,'$999,999') "15% UP"
FROM emp
WHERE comm>=0;