# Chapter 6. Managing Data with DML and Transactions

This chapter covers how to manage and manipulate data in Oracle SQL using DML (Data Manipulation Language) commands and transaction control.

---

### DML Commands

- **INSERT:** Adds new rows to a table. You can insert values into all columns or specify particular columns. Handles various data types, including dates and null values.
- **UPDATE:** Modifies existing data in a table based on specified conditions.
- **DELETE:** Removes rows from a table according to given criteria.
- **MERGE:** Combines data from two tables by inserting, updating, or deleting rows in a target table based on matching conditions.

---

### Using INSERT

- Insert a single row by specifying values for all or selected columns.
- Insert multiple rows using subqueries or the `INSERT ALL` statement.
- Supports inserting nulls and negative values, as well as handling date formats.

---

### Using UPDATE

- Change values in one or more columns for rows that meet certain conditions.
- Can update based on values from subqueries or other columns.

---

### Using DELETE

- Remove rows from a table that match specific conditions.

---

### Using MERGE

- Perform insert, update, and delete operations in a single statement by comparing source and target tables.
- Useful for synchronizing tables and upserting data.

---

### Transaction Management

- A transaction is a logical unit of work that includes one or more DML operations.
- All operations in a transaction must succeed for the transaction to be committed; otherwise, they can be rolled back to maintain data integrity.

**Transaction Control Commands:**
- **COMMIT:** Permanently saves all changes made in the current transaction.
- **ROLLBACK:** Undoes all changes made since the last commit.
- **SAVEPOINT:** Sets a point within a transaction to which you can roll back if needed.
