<details>
<summary>ENG (English Version)</summary>

# Chapter 5. Learning DDL Commands and the Data Dictionary

## Overview
This chapter introduces Oracle SQL Data Definition Language (DDL) commands and the data dictionary.  
It focuses on creating, modifying, and managing database objects, as well as understanding metadata stored within the Oracle database.

## Key Topics Covered
- **Types of Oracle SQL Commands:**  
  Understand the roles of DML, DDL, DCL, TCL, and `SELECT` statements and how they are used within Oracle SQL.

- **Creating Tables:**  
  Learn how to define tables using `CREATE TABLE`, specify data types, set default values, and apply naming rules and constraints.

- **Special Table Types:**  
  Work with global temporary tables and understand how session-based data storage and automatic data cleanup operate.

- **Table Copying (CTAS):**  
  Use `CREATE TABLE AS SELECT` to copy table structures and data or create tables based on query results.

- **Modifying Tables with ALTER:**  
  Add, modify, rename, and remove columns and tables using the `ALTER TABLE` command.

- **Removing Data and Objects:**  
  Understand the differences between `TRUNCATE` and `DROP` and their effects on data and table structures.

- **Read-Only and Virtual Columns:**  
  Use read-only tables to restrict data modification and virtual columns to define calculated values based on existing columns.

- **Data Dictionary:**  
  Explore data dictionary views that store metadata about database objects, users, privileges, constraints, and system activity.

## Purpose
This chapter is intended to help learners understand how database structures are defined and managed in Oracle SQL.  
By learning DDL commands and data dictionary usage, readers can effectively control database objects and interpret system metadata.

</details>

<details>
<summary>KOR (한국어 버전)</summary>

# Chapter 5. DDL 명령어 및 데이터 딕셔너리 학습

## 개요
이 장은 Oracle SQL의 데이터 정의 언어(DDL) 명령어와 데이터 딕셔너리에 대한 설명으로 구성됨.  
데이터베이스 객체 생성, 수정, 삭제와 메타데이터 관리 방식에 대한 개념 정리를 포함함.

## 주요 학습 주제
- **Oracle SQL 명령어 유형:**  
  DML, DDL, DCL, TCL, `SELECT` 문의 역할과 사용 목적에 대한 구분 정리.

- **테이블 생성:**  
  `CREATE TABLE`을 활용한 테이블 정의 방법과 데이터 타입 지정, 기본값 설정, 객체 명명 규칙에 대한 이해.

- **특수 테이블 유형:**  
  전역 임시 테이블(Global Temporary Table)의 개념과 세션 기반 데이터 저장 방식 및 자동 데이터 정리 특성 학습.

- **테이블 복사(CTAS):**  
  `CREATE TABLE AS SELECT`를 활용한 테이블 구조 및 데이터 복사 방식 정리.

- **ALTER를 이용한 테이블 수정:**  
  컬럼 추가, 변경, 이름 수정, 삭제 등 테이블 구조 변경 작업에 대한 처리 방식 이해.

- **데이터 및 객체 제거:**  
  `TRUNCATE`와 `DROP` 명령어의 차이점과 데이터 및 구조에 미치는 영향 정리.

- **읽기 전용 및 가상 컬럼:**  
  데이터 변경을 제한하는 읽기 전용 테이블 개념과 계산식 기반 가상 컬럼 활용 구조 이해.

- **데이터 딕셔너리:**  
  데이터베이스 객체 구조, 제약조건, 사용자, 권한, 저장 정보 등을 관리하는 데이터 딕셔너리 뷰의 역할 이해.

## 목적
이 장은 Oracle SQL에서 데이터베이스 구조 정의 및 관리 방식에 대한 이해를 목표로 구성됨.  
이를 통해 데이터베이스 객체 제어와 시스템 메타데이터 해석에 필요한 SQL 활용 역량 확보를 목적으로 함.

</details>
