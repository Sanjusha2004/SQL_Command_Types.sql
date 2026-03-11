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
### 📅 Day 3: Data Types & Basic Syntax
Today I learned how to define a schema and insert records.
- **Data Types:** `INT`, `VARCHAR`, `DECIMAL`.
- **Commands:** `CREATE` (DDL) and `INSERT` (DML).


---
### 📅 Day 4: Filtering Data with WHERE & Operators
Today I explored how to retrieve specific data by applying filters and conditions.

- **WHERE Clause:** Used to filter records based on specific conditions.
- **Comparison Operators:** `=`, `!=`, `>`, `<`, `>=`, `<=`
- **Logical Operators:** `AND`, `OR`, `NOT`
- **Special Operators:** - `BETWEEN`: Filter values within a range.
    - `IN`: Specify multiple possible values.
    - `LIKE`: Search for specific patterns using wildcards (`%`, `_`).
 

---
### 📅 Day 5: Modifying & Deleting (ALTER, UPDATE, DELETE, TRUNCATE, DROP)
Today I learned how to manage changes in both data and table structure.
- **ALTER:** To modify table schema.
- **UPDATE:** To edit existing records.
- **DELETE vs TRUNCATE:** Removing specific rows vs. wiping all data.
- **DROP:** Deleting the entire table from the database.
