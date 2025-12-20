<details>
<summary>ENG (English Version)</summary>

# Chapter 7. Managing Constraints in Oracle SQL

## Overview
This chapter explains Oracle SQL constraints for enforcing data integrity rules on tables.  
It covers constraint types, creation methods, enabling/disabling options, and referential integrity management.

## Key Topics Covered
- **Constraint Types:**  
  PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, CHECK constraints for data validation.

- **Creating Constraints:**  
  Use ALTER TABLE ADD CONSTRAINT for column-level and table-level definitions with examples.

- **Foreign Key Management:**  
  ON DELETE CASCADE and SET NULL options, parent-child table relationships.

- **Enable/Disable Options:**  
  DISABLE/NOVALIDATE, DISABLE VALIDATE, ENABLE NOVALIDATE, ENABLE VALIDATE behaviors.

- **Exception Handling:**  
  EXCEPTIONS INTO table for constraint violations during validation.

- **Querying Constraints:**  
  USER_CONSTRAINTS and USER_CONSCOLUMNS views for constraint analysis.

## Purpose
This chapter teaches constraint implementation to maintain referential integrity and data quality.  
Mastering these ensures robust database design and error-free data operations.

</details>

<details>
<summary>KOR (한국어 버전)</summary>

# Chapter 7. 제약 조건(Constraint) 관리

## 개요
이 장은 Oracle SQL에서 테이블 데이터 무결성을 보장하는 제약 조건에 대해 설명함.  
제약 조건 유형, 생성 방법, 활성화/비활성화 옵션, 참조 무결성 관리 포함.

## 주요 학습 주제
- **제약 조건 유형:**  
  PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, CHECK 제약 조건으로 데이터 검증.

- **제약 조건 생성:**  
  ALTER TABLE ADD CONSTRAINT를 활용한 컬럼/테이블 레벨 정의 예제.

- **외래키 관리:**  
  ON DELETE CASCADE/SET NULL 옵션, 부모-자식 테이블 관계 설정.

- **활성화/비활성화 옵션:**  
  DISABLE/NOVALIDATE, DISABLE VALIDATE, ENABLE NOVALIDATE, ENABLE VALIDATE 동작.

- **예외 처리:**  
  VALIDATE 시 EXCEPTIONS INTO 테이블로 제약 위반 데이터 처리.

- **제약 조건 조회:**  
  USER_CONSTRAINTS, USER_CONSCOLUMNS 뷰 활용한 분석 쿼리.

## 목적
이 장은 참조 무결성과 데이터 품질 유지를 위한 제약 조건 구현법 제시.  
이를 통해 견고한 데이터베이스 설계와 오류 없는 데이터 작업 역량 확보.

</details>
