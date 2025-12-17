<details>
<summary>ENG (English Version)</summary>

# Chapter 6. Managing Data with DML and Transactions

## Overview
This chapter explains how to manage and manipulate data in Oracle SQL using Data Manipulation Language (DML) commands and transaction control.  
It focuses on modifying table data safely and maintaining data consistency through transaction management.

## Key Topics Covered
- **DML Commands Overview:**  
  Understand the roles of `INSERT`, `UPDATE`, `DELETE`, and `MERGE` commands for adding, modifying, and removing data.

- **Using INSERT:**  
  Insert single or multiple rows into tables, handle null and negative values, and manage date formats using various insertion techniques.

- **Using UPDATE:**  
  Modify existing rows based on conditions, including updates driven by subqueries or values from other columns.

- **Using DELETE:**  
  Remove rows that meet specific criteria while controlling the scope of data removal.

- **Using MERGE:**  
  Perform conditional insert, update, and delete operations in a single statement to synchronize data between tables.

- **Transaction Management:**  
  Understand transactions as logical units of work and use transaction control commands to ensure data integrity.

- **Transaction Control Commands:**  
  Use `COMMIT`, `ROLLBACK`, and `SAVEPOINT` to permanently save changes, undo operations, or manage partial rollbacks within a transaction.

## Purpose
This chapter is intended to help learners safely manipulate data and manage transactions in Oracle SQL.  
By mastering DML commands and transaction control, readers can maintain data consistency and reliability in database operations.

</details>

<details>
<summary>KOR (한국어 버전)</summary>

# Chapter 6. DML 및 트랜잭션을 이용한 데이터 관리

## 개요
이 장은 Oracle SQL에서 데이터 조작 언어(DML)와 트랜잭션 제어를 활용한 데이터 관리 방식에 대한 설명으로 구성됨.  
테이블 데이터 변경 작업과 데이터 무결성 유지를 위한 트랜잭션 관리 개념 정리를 포함함.

## 주요 학습 주제
- **DML 명령어 개요:**  
  데이터 삽입, 수정, 삭제를 수행하는 `INSERT`, `UPDATE`, `DELETE`, `MERGE` 명령어의 역할 이해.

- **INSERT 사용:**  
  단일 행 및 다중 행 삽입 방식과 NULL 값, 음수 값, 날짜 데이터 처리 방식 정리.

- **UPDATE 사용:**  
  조건에 따른 행 데이터 수정 방식과 서브쿼리 또는 다른 컬럼 값을 활용한 갱신 구조 이해.

- **DELETE 사용:**  
  특정 조건을 만족하는 행 삭제 방식과 데이터 제거 범위 제어 방법 정리.

- **MERGE 사용:**  
  소스 테이블과 타깃 테이블 비교를 기반으로 삽입, 수정, 삭제를 수행하는 통합 처리 방식 이해.

- **트랜잭션 관리:**  
  하나 이상의 DML 작업으로 구성된 논리적 작업 단위로서의 트랜잭션 개념 이해.

- **트랜잭션 제어 명령어:**  
  변경 사항을 영구 반영하는 `COMMIT`, 작업을 되돌리는 `ROLLBACK`, 부분 복구를 위한 `SAVEPOINT` 활용 방식 정리.

## 목적
이 장은 Oracle SQL에서 데이터 변경 작업과 트랜잭션 제어 방식에 대한 이해를 목표로 구성됨.  
이를 통해 데이터 무결성과 일관성을 유지하는 안정적인 SQL 작업 수행 역량 확보를 목적으로 함.

</details>
