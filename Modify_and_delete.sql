-- ALTER, UPDATE, DELETE, TRUNCATE, and DROP

-- 1. Modifying Structure (Adding a new column)
ALTER TABLE Student_Data ADD Email VARCHAR(100);

-- 2. Modifying Data (Updating an existing record)
UPDATE Student_Data 
SET Email = 'sanju@example.com' 
WHERE StudentID = 101;

-- 3. Deleting a specific record
DELETE FROM Student_Data 
WHERE StudentID = 102;

-- 4. Careful: Removing all data but keeping table structure
-- TRUNCATE TABLE Student_Data;

-- 5. Careful: Removing the entire table
-- DROP TABLE Student_Data;
