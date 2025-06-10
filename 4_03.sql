SELECT e.name NAME, 
       TRUNC((SYSDATE - e.birthday)/365) AGE, 
       e.position CURR_POSITION, p.position BE_POSITION
FROM emp2 e, p_grade p
WHERE TRUNC((SYSDATE - e.birthday)/365) BETWEEN p.s_age AND p.e_age
ORDER BY 2;