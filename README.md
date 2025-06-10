# Chapter 4. Learning SQL Joins

This chapter explains how to combine data from multiple tables using SQL JOINs. It covers the concept of joins, different types of joins, and both Oracle and ANSI syntax for writing join queries.

---

### What is a Join?

- A join is a query that combines rows from two or more tables, views, or other data sources, based on a related column between them.
- Joins are essential for retrieving related data spread across multiple tables in a relational database.
- Joins can be written using traditional Oracle syntax (using the `WHERE` clause) or ANSI SQL syntax (using the `JOIN` keyword and `ON` clause).

---

### Main Types of Joins

- **Equi Join (Inner Join):**  
  Combines rows from two tables where the join condition is met (typically using the equality operator). Only matching rows are returned.
  - Oracle syntax:  
    `SELECT ... FROM table1, table2 WHERE table1.col = table2.col;`
  - ANSI syntax:  
    `SELECT ... FROM table1 INNER JOIN table2 ON table1.col = table2.col;`

- **Non-Equi Join:**  
  Joins tables using a condition other than equality, such as a range (`BETWEEN`, ``).

- **Cartesian Product:**  
  If no join condition is specified, every row from the first table is combined with every row from the second table, resulting in a large number of rows. This is rarely useful in practice.

- **Outer Join:**  
  Returns matching rows as well as non-matching rows from one or both tables.
  - **Left Outer Join:** Returns all rows from the left table and matching rows from the right table. Non-matching rows from the right table return NULLs.
  - **Right Outer Join:** Returns all rows from the right table and matching rows from the left table. Non-matching rows from the left table return NULLs.
  - **Full Outer Join:** Returns all rows from both tables, with NULLs in columns where there is no match.
  - Oracle syntax uses `(+)` in the `WHERE` clause for outer joins; ANSI uses `LEFT OUTER JOIN`, `RIGHT OUTER JOIN`, and `FULL OUTER JOIN`.

- **Self Join:**  
  A table is joined to itself to compare rows within the same table. Table aliases are used to distinguish the instances.

