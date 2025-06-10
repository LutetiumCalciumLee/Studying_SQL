# Chapter 3. Learning SQL Group (Aggregate) Functions

This chapter covers SQL group (aggregate) functions, which process multiple rows and return a single summary value for each group. These functions are essential for summarizing, analyzing, and reporting data in Oracle SQL.

---

### What Are Group (Aggregate) Functions?

- Group functions perform calculations on sets of rows and return a single value per group.
- Commonly used with the `GROUP BY` clause to organize results by categories.
- Can also be used with `HAVING` to filter groups based on aggregate results.

---

### Main Types of Aggregate Functions

- **COUNT:** Counts the number of rows or non-null values in a column.
- **SUM:** Calculates the total sum of a numeric column.
- **AVG:** Computes the average value of a numeric column.
- **MAX / MIN:** Finds the highest or lowest value in a group.
- **STDDEV / VARIANCE:** Returns the standard deviation or variance of numeric data.

---

### Advanced Grouping Features

- **GROUP BY:** Groups rows that have the same values in specified columns, so aggregate functions can be applied to each group.
- **HAVING:** Filters groups based on aggregate function results (e.g., only show groups with an average salary above a certain amount).
- **ROLLUP:** Automatically calculates subtotals and grand totals for hierarchical groupings.
- **CUBE:** Computes subtotals for all possible combinations of groupings.
- **GROUPING SETS:** Allows multiple groupings in a single query for flexible summary reports.
- **LISTAGG:** Concatenates values from multiple rows into a single string within a group.
- **PIVOT / UNPIVOT:** Transforms rows into columns and vice versa for cross-tab reports.

---

### Analytical and Ranking Functions

- **LAG / LEAD:** Access data from preceding or following rows in a result set, useful for comparing values across rows.
- **RANK / DENSE_RANK / ROW_NUMBER:** Assign rankings or unique row numbers within each group, supporting advanced reporting and analytics.
- **SUM() OVER:** Calculates running totals or moving averages across rows, optionally partitioned by group.

---

### Usage Tips

- Aggregate functions ignore NULL values, except for `COUNT(*)`.
- When using `GROUP BY`, all columns in the `SELECT` list must be either grouped or aggregated.
- Use `ORDER BY` to sort aggregated results as needed.
- Combine aggregate functions with conditional logic (`CASE`, `DECODE`) for custom summaries.

