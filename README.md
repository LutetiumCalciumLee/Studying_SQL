<details>
<summary>ENG (English Version)</summary>

# Chapter 4. Learning SQL Joins

## Overview
This chapter explains how to combine data from multiple tables using SQL joins.  
It covers the core concept of joins, common join types, and both Oracle and ANSI syntax used to write join queries.

## Key Topics Covered
- **Concept of Joins:**  
  Understand how joins combine related rows from multiple tables based on join conditions and why joins are essential in relational databases.

- **Join Syntax Styles:**  
  Learn the differences between traditional Oracle join syntax using the `WHERE` clause and ANSI SQL join syntax using `JOIN` and `ON`.

- **Inner and Equi Joins:**  
  Apply equi joins (inner joins) to return only rows that satisfy equality-based join conditions between tables.

- **Non-Equi Joins and Cartesian Products:**  
  Use non-equality conditions for joining tables and understand the behavior and risks of Cartesian products when join conditions are omitted.

- **Outer Joins:**  
  Work with left, right, and full outer joins to include unmatched rows, using both Oracle `(+)` syntax and ANSI `OUTER JOIN` syntax.

- **Self Joins:**  
  Join a table to itself using table aliases to compare rows within the same table.

## Purpose
This chapter is intended to help learners retrieve related data spread across multiple tables using appropriate join techniques.  
By mastering SQL joins, readers can construct accurate and efficient queries for multi-table data retrieval.

</details>

<details>
<summary>KOR (한국어 버전)</summary>

# Chapter 4. SQL 조인(Join) 학습

## 개요
이 장은 Oracle SQL에서 여러 테이블의 데이터를 결합하는 조인 개념에 대한 설명으로 구성됨.  
조인의 기본 원리와 주요 조인 유형, Oracle 문법과 ANSI 문법을 활용한 조인 작성 방식 소개를 포함함.

## 주요 학습 주제
- **조인 개념:**  
  관계형 데이터베이스에서 여러 테이블의 관련 데이터를 결합하는 조인의 역할과 필요성에 대한 이해.

- **조인 문법 방식:**  
  `WHERE` 절을 사용하는 Oracle 전통 문법과 `JOIN` 및 `ON` 절을 사용하는 ANSI 문법의 구조적 차이 정리.

- **내부 조인 및 등가 조인:**  
  테이블 간 동일 조건을 기준으로 일치하는 행만 반환하는 등가 조인(내부 조인) 활용 방식 학습.

- **비등가 조인 및 카테시안 곱:**  
  범위 조건 등 비등가 조건을 활용한 조인 방식과 조인 조건 누락 시 발생하는 카테시안 곱의 동작 방식 이해.

- **외부 조인:**  
  일치하지 않는 행을 포함하는 LEFT, RIGHT, FULL 외부 조인의 개념과 Oracle `(+)` 문법 및 ANSI 외부 조인 문법 활용 방식 정리.

- **셀프 조인:**  
  동일 테이블을 대상으로 별칭을 사용하여 행 간 비교를 수행하는 셀프 조인 구조 이해.

## 목적
이 장은 다중 테이블 간 데이터 관계를 기반으로 한 조인 사용 방식 이해를 목표로 구성됨.  
이를 통해 복수 테이블 데이터를 정확하게 조회하는 SQL 쿼리 작성 역량 확보를 목적으로 함.

</details>
