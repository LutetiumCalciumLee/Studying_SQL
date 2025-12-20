<details>
<summary>ENG (English Version)</summary>

# Chapter 8. INDEX (Indexes) in Oracle SQL

## Overview
This chapter covers Oracle SQL indexes for improving query performance and data access speed.  
It explains index structures, creation methods, types, and maintenance techniques.

## Key Topics Covered
- **Index Fundamentals:**  
  Purpose of indexes for fast data retrieval, full table scan vs. index scan comparison.

- **B-Tree Index Structure:**  
  Root, branch, leaf blocks with ROWID pointers to table data.

- **Index Creation Types:**  
  UNIQUE/NON-UNIQUE, ASC/DESC, Composite, Function-Based (FBI), Bitmap indexes.

- **DML Impact on Indexes:**  
  INSERT/UPDATE/DELETE effects causing index splits and maintenance overhead.

- **Index Management:**  
  CREATE/DROP/REBUILD, INVISIBLE indexes (11g+), monitoring usage via views.

- **Querying Indexes:**  
  USER_INDEXES, USER_IND_COLUMNS, V$OBJECT_USAGE for analysis.

## Purpose
This chapter teaches index implementation for database performance optimization.  
Mastering indexes ensures efficient query execution and scalable data operations.

</details>

<details>
<summary>KOR (한국어 버전)</summary>

# Chapter 8. INDEX (인덱스) 관리

## 개요
이 장은 Oracle SQL에서 쿼리 성능 향상을 위한 인덱스에 대해 설명함.  
인덱스 구조, 생성 방법, 유형, 유지보수 기술 포함.

## 주요 학습 주제
- **인덱스 기초:**  
  빠른 데이터 검색 목적, 전체 테이블 스캔 vs 인덱스 스캔 비교.

- **B-트리 인덱스 구조:**  
  루트, 브랜치, 리프 블록과 테이블 데이터의 ROWID 포인터.

- **인덱스 생성 유형:**  
  UNIQUE/NON-UNIQUE, ASC/DESC, 복합, 함수 기반(FBI), 비트맵 인덱스.

- **DML 작업 영향:**  
  INSERT/UPDATE/DELETE로 인한 인덱스 분할 및 유지보수 오버헤드.

- **인덱스 관리:**  
  CREATE/DROP/REBUILD, INVISIBLE 인덱스(11g+), 사용량 모니터링 뷰.

- **인덱스 조회:**  
  USER_INDEXES, USER_IND_COLUMNS, V$OBJECT_USAGE 분석 쿼리.

## 목적
이 장은 데이터베이스 성능 최적화를 위한 인덱스 구현법 제시.  
인덱스 마스터로 효율적 쿼리 실행과 확장 가능한 데이터 작업 보장.

</details>
