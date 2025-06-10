SELECT
  COUNT(*) || 'EA (100%)' AS total,
  COUNT(DECODE(SUBSTR(tel,1,2),'02',1)) || 'EA (' || ROUND(COUNT(DECODE(SUBSTR(tel,1,2),'02',1))/COUNT(*)*100,0) || '%)' AS seoul,
  COUNT(DECODE(SUBSTR(tel,1,3),'031',1)) || 'EA (' || ROUND(COUNT(DECODE(SUBSTR(tel,1,3),'031',1))/COUNT(*)*100,0) || '%)' AS gyeonggi,
  COUNT(DECODE(SUBSTR(tel,1,3),'051',1)) || 'EA (' || ROUND(COUNT(DECODE(SUBSTR(tel,1,3),'051',1))/COUNT(*)*100,0) || '%)' AS busan,
  COUNT(DECODE(SUBSTR(tel,1,3),'052',1)) || 'EA (' || ROUND(COUNT(DECODE(SUBSTR(tel,1,3),'052',1))/COUNT(*)*100,0) || '%)' AS ulsan,
  COUNT(DECODE(SUBSTR(tel,1,3),'053',1)) || 'EA (' || ROUND(COUNT(DECODE(SUBSTR(tel,1,3),'053',1))/COUNT(*)*100,0) || '%)' AS daegu,
  COUNT(DECODE(SUBSTR(tel,1,3),'055',1)) || 'EA (' || ROUND(COUNT(DECODE(SUBSTR(tel,1,3),'055',1))/COUNT(*)*100,0) || '%)' AS gyeongnam
FROM student;
