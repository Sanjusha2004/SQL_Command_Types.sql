📊 SQL Commands Showcase: From Structure to Control
Welcome to my SQL learning journey! This repository is dedicated to exploring and documenting the different types of SQL commands used to manage and manipulate databases.

1. DDL (Data Definition Language)

• Purpose: Defines the structure.

• Commands: `CREATE`, `ALTER`, `DROP`

• Example:

```

CREATE TABLE Students (ID INT, Name VARCHAR(50));

```


2. DML (Data Manipulation Language)

• Purpose: Manages the data records.

• Commands: `INSERT`, `UPDATE`, `DELETE`

• Example:

```

INSERT INTO Students VALUES (1, 'Arjun');

```


3. DQL (Data Query Language)

• Purpose: Retrieves data.

• Command: `SELECT`

• Example:

```

SELECT * FROM Students;

```


4. DCL (Data Control Language)

• Purpose: Handles permissions.

• Commands: `GRANT`, `REVOKE`

5. TCL (Transaction Control Language)

• Purpose: Manages transactions.

• Commands: `COMMIT`, `ROLLBACK`, `SAVEPOINT`


---
### Data Types & Basic Syntax
Today I learned how to define a schema and insert records.
- **Data Types:** `INT`, `VARCHAR`, `DECIMAL`.
- **Commands:** `CREATE` (DDL) and `INSERT` (DML).


---
### Filtering Data with WHERE & Operators
Today I explored how to retrieve specific data by applying filters and conditions.

- **WHERE Clause:** Used to filter records based on specific conditions.
- **Comparison Operators:** `=`, `!=`, `>`, `<`, `>=`, `<=`
- **Logical Operators:** `AND`, `OR`, `NOT`
- **Special Operators:** - `BETWEEN`: Filter values within a range.
    - `IN`: Specify multiple possible values.
    - `LIKE`: Search for specific patterns using wildcards (`%`, `_`).
 

---
### Modifying & Deleting (ALTER, UPDATE, DELETE, TRUNCATE, DROP)
Today I learned how to manage changes in both data and table structure.
- **ALTER:** To modify table schema.
- **UPDATE:** To edit existing records.
- **DELETE vs TRUNCATE:** Removing specific rows vs. wiping all data.
- **DROP:** Deleting the entire table from the database.


---

### Aggregate Functions
Today I learned how to summarize data using built-in SQL functions.

| Function | Purpose | Example Use Case |
| :--- | :--- | :--- |
| **COUNT** | To find the total number of records | Total active users |
| **SUM & AVG** | To calculate totals and averages for numeric data. | Total monthly revenue |
| **MIN/MAX** | To identify the highest and lowest values in a dataset| Highest & Lowest prices |
| **Aliasing (As)** | Renaming output columns for better readability | 


---
### Grouping, Filtering & Sorting
Moving beyond simple queries to organized data analysis.
- **GROUP BY:** Categorizing data into logical groups.
- **HAVING:** Filtering groups based on aggregate conditions (Used where `WHERE` fails).
- **ORDER BY:** Sorting results (`ASC` / `DESC`).
- **LIMIT & OFFSET:** Managing large datasets by skipping or restricting rows.

### Flow of execution
FROM ➡️ WHERE ➡️ GROUP BY ➡️ HAVING ➡️ SELECT ➡️ ORDER BY ➡️ LIMIT


---
### Window Functions
Learned how to perform calculations across a set of table rows that are related to the current row.
- **OVER():** The heart of window functions.
- **PARTITION BY:** Grouping data without collapsing rows.
- **ROW_NUMBER(), RANK(), DENSE_RANK():** Different ways to sequence and rank data.
- **Benefits:** Allows comparing individual records against group statistics (like Average or Sum) in the same view.


---
### Advanced Window Functions (Navigational & Statistical)
Explored functions that allow for sophisticated data comparison and distribution analysis.
- **LAG & LEAD:** Accessed data from preceding and succeeding rows (crucial for trend analysis).
- **NTILE:** Segmented datasets into equal groups/buckets.
- **PERCENT_RANK:** Calculated the relative rank of rows as a percentage.
- **Value Functions:** Used `FIRST_VALUE` and `NTH_VALUE` to retrieve specific data points within a partition.



---
### CTEs, Views, and Constraints
Focused on database structure, code organization, and data integrity.
- **CTEs (WITH clause):** Used for creating temporary result sets to make complex queries readable.
- **Views:** Created virtual tables to simplify repetitive queries and enhance security.
- **Constraints:** Implemented `PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, and `UNIQUE` to ensure data quality and prevent errors.


---
### Joins and Set Operators
Mastered the art of combining data from multiple sources.
- **Joins:** Implemented `INNER`, `LEFT`, `RIGHT`, and `FULL` joins to merge tables based on keys.
- **Set Operators:** Used `UNION`, `INTERSECT`, and `EXCEPT` to combine or compare result sets from different queries.
- **Key Insight:** Joins expand data horizontally (adding columns), while Set Operators expand data vertically (adding rows).
