# Chapter 5. Learning DDL Commands and the Data Dictionary

This chapter introduces the main Oracle SQL DDL (Data Definition Language) commands and the data dictionary, providing essential tools for creating, modifying, and managing database objects.

---

### Types of Oracle SQL Commands

- **DML (Data Manipulation Language):** `INSERT`, `UPDATE`, `DELETE`, `MERGE`
- **DDL (Data Definition Language):** `CREATE`, `ALTER`, `TRUNCATE`, `DROP`
- **DCL (Data Control Language):** `GRANT`, `REVOKE`
- **TCL (Transaction Control Language):** `COMMIT`, `ROLLBACK`
- **SELECT:** Sometimes referred to as DQL (Data Query Language)

---

### Creating Tables

- Use `CREATE TABLE` to define new tables, specifying column names and data types.
- You can set default values for columns during creation.
- Table and column names must start with a letter, can include numbers and special characters (with quotes), and are limited to 30 bytes.
- Table names must be unique per user and should not use reserved Oracle keywords.

---

### Special Table Types

- **Global Temporary Tables:**  
  Created with `CREATE GLOBAL TEMPORARY TABLE`. These tables store session-specific data and automatically clear data after a transaction or session ends.

---

### Table Copying (CTAS: Create Table As Select)

- Copy all columns and data:  
  `CREATE TABLE new_table AS SELECT * FROM existing_table;`
- Copy only structure (no data):  
  Use a `WHERE` clause that returns no rows.

---

### Modifying Tables with ALTER

- Add columns: `ALTER TABLE table_name ADD (column_name data_type);`
- Set default values when adding columns.
- Rename columns or tables.
- Change column data types or lengths.
- Drop columns: `ALTER TABLE table_name DROP COLUMN column_name;`

---

### Removing Data and Objects

- **TRUNCATE:** Removes all rows from a table, keeping the structure.
- **DROP:** Deletes the table and its structure from the database.

---

### Read-Only and Virtual Columns

- Tables can be set to read-only mode, preventing data changes.
- Virtual columns (from Oracle 11g) are computed from other columns and cannot be directly inserted into.

---

### Data Dictionary

- The data dictionary contains metadata about the database, such as object structures, storage usage, constraints, users, privileges, and audit information.
- There are static and dynamic dictionary views for querying metadata.
