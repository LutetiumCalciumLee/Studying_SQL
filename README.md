# Chapter 1. Querying Data with SELECT

This chapter introduces the basics of retrieving data from an Oracle database using the `SELECT` statement. It covers essential concepts, syntax, and practical tips for querying and filtering data.

---

### What is a SELECT Statement?

- The `SELECT` statement is used to retrieve data from one or more tables, views, or other database objects.
- The basic structure includes the `SELECT` list (columns to display) and the `FROM` clause (tables to query).
- Additional clauses like `WHERE`, `ORDER BY`, and set operators can refine and organize the results.

---

### Key Features and Usage

- **Selecting All Columns:**  
  Use `SELECT * FROM table_name;` to retrieve all columns from a table.

- **Selecting Specific Columns:**  
  Specify column names to retrieve only the desired data:  
  `SELECT column1, column2 FROM table_name;`

- **Column Aliases:**  
  Assign temporary names to columns for clarity using `AS` or quotes:  
  `SELECT column1 AS "Alias" FROM table_name;`

- **Expressions and Literals:**  
  Combine columns and literals in the output:  
  `SELECT column1 || ' text' FROM table_name;`

- **Removing Duplicates:**  
  Use `SELECT DISTINCT column FROM table_name;` to return unique values.

---

### Filtering and Sorting Data

- **WHERE Clause:**  
  Filter rows based on conditions:  
  `SELECT * FROM table_name WHERE condition;`  
  Supports operators like `=`, `!=`, `>`, `=`, `<=`, `BETWEEN`, `IN`, `LIKE`, `IS NULL`, and logical operators (`AND`, `OR`, `NOT`).

- **ORDER BY Clause:**  
  Sort results by one or more columns:  
  `SELECT * FROM table_name ORDER BY column1 ASC, column2 DESC;`

---

### Advanced Query Features

- **Set Operators:**  
  - `UNION`: Combine results from two queries, removing duplicates.
  - `UNION ALL`: Combine results, including duplicates.
  - `INTERSECT`: Return only rows present in both queries.
  - `MINUS`: Return rows from the first query not present in the second.

- **User Input in Queries:**  
  Use substitution variables (e.g., `&variable`) to prompt for user input in tools like SQL*Plus.

- **Aggregate Functions and Expressions:**  
  Perform calculations and summarize data using arithmetic operators and functions.

---

### Practical Tips

- Always use single quotes for string values in conditions.
- Column and table names are case-insensitive by default, but string comparisons are case-sensitive.
- Use aliases and formatting commands to improve result readability.
- Be mindful of operator precedence in complex conditions.
- Use built-in commands to view table structures (e.g., `DESC table_name;`).
