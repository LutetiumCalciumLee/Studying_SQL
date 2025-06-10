SELECT e.name NAME, e.position POSITION, 
       TO_CHAR(e.pay, '999,999,999') PAY, 
       TO_CHAR(p.s_pay, '999,999,999') "Low Pay", 
       TO_CHAR(p.e_pay, '999,999,999') "High Pay"
FROM emp2 e, p_grade p
WHERE e.position = p.position;