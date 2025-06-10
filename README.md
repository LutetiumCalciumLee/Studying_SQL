# Chapter 2. Learning SQL Single-Row Functions

This chapter introduces Oracle SQL single-row functions, which process and return a value for each row in a query result. These functions are essential for manipulating and formatting data directly within SQL statements.

---

### What are Single-Row Functions?

- Operate on each row and return one result per row.
- Can be used in `SELECT`, `WHERE`, `ORDER BY`, and other SQL clauses.
- Accept columns, expressions, literals, or variables as arguments.

---

### Types of Single-Row Functions

- **Character Functions:**  
  Manipulate string data. Common examples:  
  `UPPER`, `LOWER`, `INITCAP`, `LENGTH`, `CONCAT`, `SUBSTR`, `INSTR`, `LPAD`, `RPAD`, `LTRIM`, `RTRIM`, `REPLACE`, and regular expression functions like `REGEXP_REPLACE`, `REGEXP_INSTR`, `REGEXP_SUBSTR`, `REGEXP_LIKE`, `REGEXP_COUNT`.

- **Number Functions:**  
  Perform calculations on numeric data. Examples:  
  `ROUND`, `TRUNC`, `MOD`, `CEIL`, `FLOOR`, `POWER`.

- **Date Functions:**  
  Manipulate and calculate dates. Examples:  
  `SYSDATE`, `MONTHS_BETWEEN`, `ADD_MONTHS`, `NEXT_DAY`, `LAST_DAY`, `ROUND`, `TRUNC`.

- **Conversion Functions:**  
  Convert between data types. Examples:  
  `TO_CHAR`, `TO_NUMBER`, `TO_DATE`.

- **General Functions:**  
  Handle nulls and implement conditional logic. Examples:  
  `NVL`, `NVL2`, `DECODE`, `CASE`.

---

### Usage and Features

- Single-row functions can be nested and combined for complex data processing.
- Useful for output formatting, calculations, data cleaning, and implementing business logic.
- Regular expression functions support advanced pattern matching and string manipulation.
- Enable efficient data conversion, formatting, and analysis within SQL queries.

---
