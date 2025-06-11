CREATE TABLE new_table
(no NUMBER(3),
name VARCHAR2(10),
birth DATE);

CREATE TABLE tt02
(no NUMBER(3,1) DEFAULT 0, name VARCHAR2(10) DEFAULT 'NO Name',
 hiredate DATE DEFAULT SYSDATE);
 
INSERT INTO tt02 (no) VALUES(1);
 
SELECT * 
FROM tt02;
 
CREATE TABLE 한글테이블
(컬럼1 number,
 컬럼2 varchar2(10),
 컬럼3 date);
 
CREATE GLOBAL TEMPORARY TABLE temp01
(no NUMBER,
name VARCHAR2(10))
ON COMMIT DELETE ROWS;

INSERT INTO temp01 VALUES (1, 'AAAAA');

SELECT * 
FROM temp01;

COMMIT;

SELECT * 
FROM temp01;

SELECT temporary, duration
FROM user_tables
WHERE table_name='TEMP01';

CREATE TABLE dept_4
AS
SELECT * FROM dept2;

CREATE TABLE dept_3
AS
SELECT dcode, dname
FROM dept2;

CREATE TABLE dept_5
AS SELECT * 
FROM dept2
WHERE 1=2;

SELECT * 
FROM dept5;

CREATE TABLE dept6
AS
SELECT dcode, dname
FROM dept2
WHERE dcode IN(1000,1001,1002);

SELECT * 
FROM dept6;

ALTER TABLE dept6
ADD (location VARCHAR2(10));

ALTER TABLE dept6
ADD (location2 VARCHAR2(10) DEFAULT 'SEOUL');

ALTER TABLE dept6 
RENAME COLUMN location2 TO loc;

RENAME dept6 TO dept7;

ALTER TABLE dept7
MODIFY(loc VARCHAR2(20));

ALTER TABLE dept7 
DROP COLUMN loc;

ALTER TABLE dept7 
DROP COLUMN loc CASCADE CONSTRAINTS;

TRUNCATE TABLE dept7;

DROP TABLE dept7;

CREATE TABLE t_readonly
(no NUMBER,
 name VARCHAR2(10));
 
INSERT INTO t_readonly
VALUES (1,'AAA');

COMMIT;

ALTER TABLE t_readonly 
READ ONLY;

ALTER TABLE t_readonly 
READ WRITE;

DROP TABLE t_readonly;

CREATE TABLE vtl
(coll NUMBER,
 col2 NUMBER,
 col3 NUMBER GENERATED ALWAYS AS (coll + col2));

INSERT INTO vt1 (coll,col2) VALUES (1,2);

SELECT * 
FROM vtl;

UPDATE vt1
SET col1=5;

ALTER TABLE vtl
ADD (col4 GENERATED ALWAYS AS ((col1+12)+col2));

SELECT column_name, data_type, data_default
FROM user_tab_columns
WHERE table_name = 'VT1'
ORDER BY column_id;

CREATE TABLE sales10
(no NUMBER,
 pcode CHAR(4),
 pdate CHAR(8),
 pqty NUMBER,
 pbungi NUMBER(1)
 GENERATED ALWAYS AS
 (
  CASE
   WHEN SUBSTR(pdate,5,2) IN ('01','02','03') THEN 1
   WHEN SUBSTR(pdate,5,2) IN ('04','05','06') THEN 2
   WHEN SUBSTR(pdate,5,2) IN ('07','08','09') THEN 3
   ELSE 4
  END) VIRTUAL
);
























