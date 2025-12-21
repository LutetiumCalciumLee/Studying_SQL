<details>
<summary>ENG (English Version)</summary>

# SQL Learning Summary (Oracle)

## Core Querying
- **SELECT Basics**: Columns, aliases (`AS`), `DISTINCT`, `WHERE` (comparison/logical/pattern operators), `ORDER BY`
- **Set Operators**: `UNION/ALL`, `INTERSECT`, `MINUS` for multi-query results
- **Single-Row Functions**: Character (`UPPER/LOWER`, `SUBSTR`, `LENGTH`, `TRIM`, `REPLACE`), Numeric (`ROUND`, `TRUNC`), Date (`SYSDATE`, `MONTHS_BETWEEN`), Conversion (`TO_CHAR/DATE/NUMBER`)

## Aggregation & Analytics
- **Group Functions**: `COUNT/SUM/AVG/MIN/MAX`, `STDDEV/VARIANCE`, `GROUP BY`, `HAVING`
- **Advanced Grouping**: `ROLLUP/CUBE/GROUPING SETS` (subtotals/totals), `LISTAGG` (concatenation), `PIVOT/UNPIVOT`
- **Window Functions**: `LAG/LEAD`, `RANK/DENSE_RANK/ROW_NUMBER`, `SUM() OVER()` (running totals)

## Joins & Subqueries
- **Join Types**: Inner/Equi, Non-Equi, Outer (LEFT/RIGHT/FULL), Self Joins
- **Join Syntax**: Oracle (`WHERE`), ANSI (`JOIN ... ON`)
- **Subqueries**: Single/Multiple row (`IN/EXISTS/ANY/ALL`), Correlated, Inline Views (`FROM` subquery)

## Data Management
- **DML**: `INSERT` (single/multi-row/CTAS), `UPDATE` (subquery-driven), `DELETE`, `MERGE`
- **Transactions**: `COMMIT/ROLLBACK/SAVEPOINT` for data consistency
- **Constraints**: `PRIMARY KEY/FOREIGN KEY/UNIQUE/NOT NULL/CHECK`, `ON DELETE CASCADE/SET NULL`

## Database Objects
- **DDL**: `CREATE/ALTER/DROP/TRUNCATE TABLE`, Temporary Tables, Virtual/Read-Only Columns
- **Indexes**: B-Tree (UNIQUE/NON-UNIQUE), Composite, Function-Based, Bitmap, Invisible
- **Views**: Simple/Complex, Materialized Views (`REFRESH`), Inline Views, `WITH CHECK OPTION`

## Performance & Metadata
- **Data Dictionary**: `USER_TABLES/CONSTRAINTS/INDEXES/VIEWS`, `V$OBJECT_USAGE`
- **Constraint Management**: Enable/Disable/Validate options, `EXCEPTIONS INTO`

</details>

<details>
<summary>KOR (한국어 버전)</summary>

# SQL 학습 요약 (Oracle)

## 핵심 조회
- **SELECT 기초**: 컬럼, 별칭(`AS`), `DISTINCT`, `WHERE` (비교/논리/패턴 연산자), `ORDER BY`
- **집합 연산자**: `UNION/ALL`, `INTERSECT`, `MINUS` (다중 쿼리 결과 결합)
- **단일 행 함수**: 문자 (`UPPER/LOWER`, `SUBSTR`, `LENGTH`, `TRIM`, `REPLACE`), 숫자 (`ROUND`, `TRUNC`), 날짜 (`SYSDATE`, `MONTHS_BETWEEN`), 변환 (`TO_CHAR/DATE/NUMBER`)

## 집계 & 분석
- **그룹 함수**: `COUNT/SUM/AVG/MIN/MAX`, `STDDEV/VARIANCE`, `GROUP BY`, `HAVING`
- **고급 그룹화**: `ROLLUP/CUBE/GROUPING SETS` (소계/총계), `LISTAGG` (문자열 결합), `PIVOT/UNPIVOT`
- **윈도우 함수**: `LAG/LEAD`, `RANK/DENSE_RANK/ROW_NUMBER`, `SUM() OVER()` (누적합)

## 조인 & 서브쿼리
- **조인 유형**: 내부/등가, 비등가, 외부(LEFT/RIGHT/FULL), 셀프 조인
- **조인 문법**: Oracle (`WHERE`), ANSI (`JOIN ... ON`)
- **서브쿼리**: 단일/다중 행 (`IN/EXISTS/ANY/ALL`), 상관 서브쿼리, 인라인 뷰 (`FROM` 서브쿼리)

## 데이터 관리
- **DML**: `INSERT` (단일/다중행/CTAS), `UPDATE` (서브쿼리 기반), `DELETE`, `MERGE`
- **트랜잭션**: `COMMIT/ROLLBACK/SAVEPOINT` (데이터 일관성)
- **제약조건**: `PRIMARY KEY/FOREIGN KEY/UNIQUE/NOT NULL/CHECK`, `ON DELETE CASCADE/SET NULL`

## 데이터베이스 객체
- **DDL**: `CREATE/ALTER/DROP/TRUNCATE TABLE`, 임시 테이블, 가상/읽기전용 컬럼
- **인덱스**: B-트리(UNIQUE/NON-UNIQUE), 복합, 함수 기반, 비트맵, INVISIBLE
- **뷰**: 단순/복잡, 물리화 뷰(`REFRESH`), 인라인 뷰, `WITH CHECK OPTION`

## 성능 & 메타데이터
- **데이터 딕셔너리**: `USER_TABLES/CONSTRAINTS/INDEXES/VIEWS`, `V$OBJECT_USAGE`
- **제약조건 관리**: 활성화/비활성화/검증 옵션, `EXCEPTIONS INTO`

</details>
