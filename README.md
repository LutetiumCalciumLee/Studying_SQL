<details>
<summary>ENG (English Version)</summary>

# Chapter 9. VIEW (Views) in Oracle SQL

## Overview
This chapter explains Oracle SQL views for simplifying complex queries and controlling data access.  
It covers view creation, types, DML restrictions, and performance optimization features.

## Key Topics Covered
- **View Fundamentals:**  
  Virtual tables based on SELECT queries for data abstraction and security.

- **Simple vs Complex Views:**  
  Single-table simple views (DML allowed) vs multi-table complex views (read-only).

- **View Creation Options:**  
  CREATE OR REPLACE VIEW, WITH CHECK OPTION, WITH READ ONLY, FORCE/NOFORCE.

- **Inline Views:**  
  Subqueries in FROM clause for grouped data and analytical functions like LAG.

- **Materialized Views (MVIEW):**  
  Physical storage with REFRESH options (COMPLETE, ON DEMAND) and QUERY REWRITE.

- **View Management:**  
  Query USER_VIEWS for view definitions and readonly status.

## Purpose
This chapter teaches view implementation for query simplification and data security.  
Mastering views enables efficient data presentation and optimized query performance.

</details>

<details>
<summary>KOR (한국어 버전)</summary>

# Chapter 9. VIEW(뷰) 관리

## 개요
이 장은 Oracle SQL에서 복잡한 쿼리 단순화와 데이터 접근 제어를 위한 뷰에 대해 설명함.  
뷰 생성, 유형, DML 제한, 성능 최적화 기능 포함.

## 주요 학습 주제
- **뷰 기초:**  
  SELECT 쿼리를 기반으로 한 가상 테이블로 데이터 추상화 및 보안 제공.

- **단순 뷰 vs 복잡 뷰:**  
  단일 테이블 단순 뷰(DML 가능) vs 다중 테이블 복잡 뷰(읽기 전용).

- **뷰 생성 옵션:**  
  CREATE OR REPLACE VIEW, WITH CHECK OPTION, WITH READ ONLY, FORCE/NOFORCE.

- **인라인 뷰:**  
  FROM 절 서브쿼리로 그룹화 데이터와 LAG 등 분석 함수 활용.

- **물리화 뷰(MVIEW):**  
  물리 저장소와 REFRESH 옵션(COMPLET, ON DEMAND), QUERY REWRITE 활성화.

- **뷰 관리:**  
  USER_VIEWS 뷰로 뷰 정의와 읽기 전용 상태 조회.

## 목적
이 장은 쿼리 단순화와 데이터 보안을 위한 뷰 구현법 제시.  
뷰 마스터로 효율적인 데이터 제시와 쿼리 성능 최적화 역량 확보.

</details>
