INSERT INTO dept2 (dcode, dname, pdept, area)
VALUES(9000, 'temp_1', 1006, 'Temp Area');

INSERT INTO dept2
VALUES(9001, 'temp_2', 1006, 'Temp Area');

INSERT INTO dept2(dcode, dname, pdept)
VALUES(9002, 'temp_3', 1006);

INSERT INTO professor (profno, name, id, position, pay, hiredate)
VALUES(5001, 'James Bond', 'Love_me', 'a full professor', 500, '2014-10-23');

ALTER SESSION SET NLS_DATE_FORMAT='RRRR-MM-DD:HH24:MI:SS';

INSERT INTO professor (profno, name, id, position, pay, hiredate)
VALUES(5001, 'James Bond', 'Love_me', 'a full professor', 500, '2014-10-23');

CREATE TABLE t_minus
 (no1 NUMBER,
  no2 NUMBER(3),
  no3 NUMBER(3,2));
  
INSERT INTO t_minus VALUES(1, 1, 1);

INSERT INTO t_minus VALUES(1.1, 1.1, 1.1);

INSERT INTO t_minus VALUES(-1.1, -1.1, -1.1);

SELECT * FROM t_minus;

CREATE TABLE professor3
AS
SELECT * 
FROM professor
WHERE 1=2;

CREATE TABLE professor4
AS
SELECT profno, name, pay
FROM professor
WHERE 1=2;

INSERT INTO professor3
SELECT * 
FROM professor;

INSERT INTO professor4
SELECT profno, name, pay
FROM professor
WHERE profno > 4000

CREATE TABLE prof_3
 (profno NUMBER,
  name VARCHAR2(25));
  
CREATE TABLE prof_4
 (profno NUMBER,
  name VARCHAR2(25));

INSERT ALL
WHEN profno BETWEEN 1000 AND 1999 THEN
 INTO prof_3 VALUES (profno, name)
WHEN profno BETWEEN 2000 AND 2999 THEN
 INTO prof_4 VALUES (profno, name)
SELECT profno, name
FROM professor;

TRUNCATE TABLE prof_3;
TRUNCATE TABLE prof_4;

INSERT ALL
 INTO prof_3 VALUES (profno, name)
 INTO prof_4 VALUES (profno, name)
SELECT profno, name
FROM professor
WHERE profno BETWEEN 3000 AND 3999;

UPDATE table
SET column = value
WHERE 조건;

UPDATE professor
SET bonus = 200
WHERE position = 'assistant professor';

UPDATE professor
SET pay = pay * 1.15
WHERE position = (SELECT position
                  FROM professor
                  WHERE name = 'Sharon Stone' )
AND pay < 250;

DELETE FROM table
WHERE 조건;

DELETE FROM dept2
WHERE dcode >= 9000 AND dcode <= 9999;

MERGE INTO Table1
USING Table2
ON (병합 조건절)
WHEN MATCHED THEN
  UPDATE SET 업데이트 내용
  DELETE WHERE 조건
WHEN NOT MATCHED THEN
  INSERT VALUES(컬럼 이름);
  
CREATE TABLE charge_01 
    (u_date VARCHAR2(6), cust_no NUMBER, u_time NUMBER, charge NUMBER);
CREATE TABLE charge_02 
    (u_date VARCHAR2(6), cust_no NUMBER, u_time NUMBER, charge NUMBER);
CREATE TABLE ch_total 
    (u_date VARCHAR2(6), cust_no NUMBER, u_time NUMBER, charge NUMBER);

INSERT INTO charge_01 VALUES('141001', 1000, 2, 1000);
INSERT INTO charge_01 VALUES('141001', 1001, 2, 1000);
INSERT INTO charge_01 VALUES('141001', 1002, 1, 500);
INSERT INTO charge_02 VALUES('141002', 1000, 3, 1500);
INSERT INTO charge_02 VALUES('141002', 1001, 4, 2000);
INSERT INTO charge_02 VALUES('141002', 1003, 1, 500);
COMMIT;

MERGE INTO ch_total total
USING charge_01 ch01
ON (total.u_date = ch01.u_date)
WHEN MATCHED THEN
  UPDATE SET total.cust_no = ch01.cust_no
WHEN NOT MATCHED THEN
  INSERT VALUES(ch01.u_date, ch01.cust_no, ch01.u_time, ch01.charge);
  
MERGE INTO ch_total total
USING charge_02 ch02
ON (total.u_date = ch02.u_date)
WHEN MATCHED THEN
  UPDATE SET total.cust_no = ch02.cust_no
WHEN NOT MATCHED THEN
  INSERT VALUES(ch02.u_date, ch02.cust_no, ch02.u_time, ch02.charge);
  
SELECT * 
FROM ch_total;
